Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B0B38DD3
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763875314; cv=none; b=cgX/E0K+6oi4cXrUIGroYQLaLE2QknGDY8UeqlYRdMysMN1tq3GMdvq03EbDXCz5xmWnJZYDgr8J4SO982xQcd9NwAXfUSdT2dfldSTNcUZ98JKRX2Kkib2QZgqCO6KEuMY9zOWGzBdMz1jVAHRERVzx0JZ0JhWalLeTXZCev7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763875314; c=relaxed/simple;
	bh=hCAhU3GoytS/NKV1/XnT6RLiXdjpqiAB6rtq4Dxo7M8=;
	h=To:Subject:From:Message-Id:Date; b=X1KcDun+wzck5qCShadPxI84u8GqEcQ6Bhc2SELO0S+l8AU8y8l2r9lCSa3J8Nj6x/FXG0Y/GNr2TLuW4O36wz6g5SsYI8MREWv/QAxavxXj1cHwZIPx3LKz2zVYZvI+BePAA5YJ4cpv90PFuJQMdmHucEHBhf53znkxt9LPYNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9pLqzqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9pLqzqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80FCC116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763875313;
	bh=hCAhU3GoytS/NKV1/XnT6RLiXdjpqiAB6rtq4Dxo7M8=;
	h=To:Subject:From:Date:From;
	b=h9pLqzqcTmlg3pSjq0hkXzrrrSzwbzZfNiFAmphufT63/V2hIu35QedHndMaCw6Mk
	 50hGx8v4kkJlXApZwj1ceZEoFMqtUpwpd6IcavwWtc0uSvcVvGTbtd08MSqVhcQ6wp
	 tOHRHORucWxY3g690tYS67T/qLbWEbYZ3mvQnbWwTILeK69Lh7f/fWV9ilsQ4dOGH6
	 TgJOJo1U4e8AXX5H4KZBN8I4Ec77a8uqC5yk6L/c68A5pODbh4diuYadrUYkofysWi
	 y7I7Xu0DWjdvKMCstgZLWFWpSoR3DVytZUgDhR3YPnWB/XUmD23+UHE4xaTwYba5xH
	 c4gOF3wOiGzuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA2CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387531358.26101.14200611068104426346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ee75f3868e6bf341278ecb234fe73a4fef578905c8b45168d23b833ec127b7
Date: Sun, 23 Nov 2025 05:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763875313
