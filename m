Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483C51D934C
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739918334; cv=none; b=ddCUp/ThyoEFLh6VYtXrMdURe+HjCNTr26A6DJiF/Hm3l6opNH5rlQfsVe5yXUKa0FZCbGygx7DWDv4zJ2oxafIRvQf+a4Wd7R2hPQ7wR4b4WrWShrrwjP2zFgClfh9zIJ4YLpTHjmeqNJc+su9WKPxfFKFr5n+mbKjP2rt3/F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739918334; c=relaxed/simple;
	bh=CK79zHTOl6CQ3SwUDJHKlKmrugjB/ajIUiEbtM+34xk=;
	h=To:Subject:From:Message-Id:Date; b=E3OzUa701yM0i2ix2ye3lIJKl/7C1I0tFYpyw5BsKFPJXpRFYyY9tJF3kbPm5MzFxnL22x5PAcWKVyiU/N+TXn/O7t4PmKfquf0F1ybcoDq2lsnoU3qPnfE1r7QLc8caR2l9U5PBpmEs4cIGGCCtUe8A5lPhPKnumhllx8ecF10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMNHL3PC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMNHL3PC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D4BC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739918333;
	bh=CK79zHTOl6CQ3SwUDJHKlKmrugjB/ajIUiEbtM+34xk=;
	h=To:Subject:From:Date:From;
	b=qMNHL3PC0igwNaU2hXNdbGXsOhhC5YEUXevbJVeUX9lUVrAlz+esmjv6k3rIFQ+m9
	 7vOH2Y6fXv/fqe66hJGf65v8yfS0ut5EAQqTf8tqIC40s2FzYzay9ZTqC58LmvO9bU
	 e99qLmlI3Zh60i1NM+oErbAAFWY2GgdYK1xmGiBCSuqU/KZxlDNEo3XPtgNLhhm75L
	 y+kH27L8qVFoxzmE9zB1dcD3lWz2oq835LE/65kRoWLMA8WiY/f1aSe8zNng8wmAeA
	 DwZpSXKPbJ/lzSV3ATbMh3CQFBgJ4R59Pmm4Jw/6fr8iTOdQ86el/ZJ9CjvNkaxVvz
	 3hhjw4bheoC/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92155C021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173991833358.5621.16051775808433067284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7b699afc5eea0290c18d0bd0528574fdb14921aab3eb5fd72ccb33387f293b
Date: Tue, 18 Feb 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739918333
