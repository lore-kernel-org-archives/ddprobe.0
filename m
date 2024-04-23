Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D61C20B3E
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 20:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713904223; cv=none; b=ZQMSxyTAagpnG3OoWeg+WHS50sqMi45HTMnONAISFA7n5pjoZNfjiabCX87Rl0n5K1wvEO/AiGYLNxttDl/FPQGQs3ZE4r0aZZ6yDjYPfODULVG2oR4BmtWnRtuOhTu1tr1hSEDOo3/oiA3j0y5N8BixfuLyZfUhBNSnCY+n0LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713904223; c=relaxed/simple;
	bh=WT6mB9ZNyGtLwbs70y1FFO3Eb4MjvlkXvqJZ+Y882fE=;
	h=To:Subject:From:Message-Id:Date; b=aYSqcN6X+l9ysVTOELvqSJumTC9wWq/xO4OsQM2KZ4d0X4Y26SSTQwHo3HfgoO8yxCLRWghnU7wiskP8f84DygjYLiLOVPS4pl2jsrd0x3HhyhqkhRbMY2xKTChr+32XK5FL7/JpDZqUCNuZe2jYuJM+UZCBc2MPoLdz6Lpu3wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elj+evpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elj+evpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E27DEC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 20:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713904222;
	bh=WT6mB9ZNyGtLwbs70y1FFO3Eb4MjvlkXvqJZ+Y882fE=;
	h=To:Subject:From:Date:From;
	b=elj+evpSgsMcunLItMobhrz2tnb2lrQs2Ep5xaoaACCHEQEbdiIMvPnm6wN+7/syJ
	 mvZ1nN2np7PY96eJKbVnTvXcpxAM4dA8de8JojJpmroiAqhDIkmHxPhjChqPR6O0yg
	 rbl9OBpwwX8tuSqFSS2jxeXFLSh3XLS6ycN9bnDICBmWE7FA2tp+ws4npinlezWxHb
	 n5Ya37YRwDWCo7xDRxNhARdlKRsq2G59c9DkZy+jIPJIW0JZqtQwLwa2boVhj71/bT
	 BXpgxDimg7KxFKpWA7db8eZGuvk9xDwi2i6+Ht0pliA2KhgLa6ICra4OjX3mK7D2HQ
	 M2uQ0b0SpzCEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD137C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 20:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171390422280.6454.15257901679278260598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9dccd68fd9dc43753481bb77605fc774ad8cbd8e375498d1b875242c21458a1
Date: Tue, 23 Apr 2024 20:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713904222
