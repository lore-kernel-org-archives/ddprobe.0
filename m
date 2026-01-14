Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE26C274B5F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410234; cv=none; b=adRAOte+6u1T7708lPye0KArNEtw4CKBGxY1jI3qW4LenaPp3esVY2UzvV6Dz201JxZeIDoy2qnIO6VzYRGyzmbIqeBS9BUPVkm0pcJQGvMMxGwdP5xb58XV3XZCvC1ND5PYo7TIWaRznWwQ+UKJt7w0Yi7+/ixNrJ2lUKrTNFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410234; c=relaxed/simple;
	bh=wAj7xsccWwkT+Y5u8MUIaSY37r6qmgSRahMZo3K/lNk=;
	h=To:Subject:From:Message-Id:Date; b=j5dkTOk6V5WMsRab66Jc9EgChn8YQv6TbMAe0olUu9/6ZlU2v7vNpMCrCN62vsFQ9GJjyMb1gqhqF8acids2BHSeBLoysMCFtzcUhNxlABNyWxNQrbnXNKl1tRzkLiiQsYij7h53rHHyA6R9Xdw8uVgTcDwNQxNhHxkik3ICtNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCd0H+N4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCd0H+N4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CB4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768410233;
	bh=wAj7xsccWwkT+Y5u8MUIaSY37r6qmgSRahMZo3K/lNk=;
	h=To:Subject:From:Date:From;
	b=GCd0H+N4lQbjszTSbubInATytN+FK9mEugmnu0hFWiK4jbDavu/EIgRjSjdpOrOCf
	 kqlG2jcZ3buLuiACPBXdD/dh1YD7cVr9bFw+SxSyt2Oq2y+lxRktxiDBnnWj0Zwadv
	 Aden1qkN2yKaVTSKr/JoGdleJduPkH7KKY6z0Yzo2lidzY2W2GRK+yXCt/QbdhFuto
	 dIqFKqu3aF2NKuE7bXtNV3JxrLTOt8kcR6p6QY3vCQBr+ZduEBPsq5zt2bMjiEg0Z0
	 BkRi5JB3DKTDGQReB2+XC2+cs0ck+AkjajaqoIyQViWKlbeoO+c9oEnFQjVp8w8gJ4
	 FkIj8f3jN4mFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BFD38FEF
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841023358.21970.2350792438042813228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec008bf463c47716f224afd69ee9c737f175eba79da5f41244a510b2dc90cc58
Date: Wed, 14 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768410233
