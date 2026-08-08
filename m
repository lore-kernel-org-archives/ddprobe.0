Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D88A2853E0
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786150834; cv=none; b=ZXGLHQ5ieZW2NJiQMw1neyqcwRFMDHaRcnU0h//6BtDLTraDBpmk9Hem2jI34i4pRVUOoASbtSTXnO0PdVw96zCbxx/Z77Cf6opyOFoWFv6RboxpMYlisKdZQyDuj5PGP2p4EOnYGWl+p8Xvygt5CDtNXY/ndPp6Wl6UDwReypc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786150834; c=relaxed/simple;
	bh=57u0l/lVyiJr+g5z9BLE2XmlegJFRCsYgBGpLecZiHM=;
	h=To:Subject:From:Message-Id:Date; b=UQUsbzy2PbCmhhWby2VtKc77+f+sygXT5LVrlIirHD2hpsJcW1nv+D4Af+OWA8lx+pZGYk9oHPWl8tI7Q9QK2LzEt9sCVTi94CweEJPz6ZiZ4QXAqPQgf+PoIpBEenhDUCP2isx33IjGyWFEkz9bbqPoFj6nM3Uxsd/k8H/lcJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJglxkZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJglxkZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63A5C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786150833;
	bh=57u0l/lVyiJr+g5z9BLE2XmlegJFRCsYgBGpLecZiHM=;
	h=To:Subject:From:Date:From;
	b=CJglxkZ6LpwXeXoWD+OQ6MYA/OSxhPu04a8LNd9aDneyeZXO50chMyJfBLMZAsQxl
	 lhjsZFJy4ZdNq2GTTO7kFnTvUg6JKk9gNJEVx2yz0E/cmsvybNUJg96N41jT7i3fMJ
	 7zw7gs+vQP4rJSSZqgdm4MGWoP9Yp8iENvRNvIbwlcO/3G0710xF78sW3DVl/W96kP
	 Bcm/XQ9+Z8cmERf+eWi7QLqLqwjl8LwlEnaZUOCY7g3m3H2xKAL5vMo2TgdBtBYE4Y
	 /9mq3f0RQB5oIxY3qYb7tNd34nsPdvm4UXasFf257/pvNhLplrqv/FUXpizfZhBkEy
	 N/Wu7tPAQelPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2876C5AD05
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615083372.4549.10886437781012352719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec05e02e6de7bb6497daab811207a1051a9356f5ab1604aa63e9a604163aab0b
Date: Sat, 08 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786150833
