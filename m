Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D922C86A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706378896; cv=none; b=N+G3AqqKY8GVfXEIDhWMQElaaUz1G9s4kvKiuz1EwfwBBrAMKTc/L252YXNJa0FMlxxDd1B94KGbPZEgbM8wF2CNVzcdkZXtIlOEOzLRBENf67gEY4fpztl59Tr919RhMDcVfU+QIJM6fVFeczhunwqOlNW3wMWkJeAhCBPOGWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706378896; c=relaxed/simple;
	bh=jGMXrsKVtjc+n2t0qQHZV/bGbWJo8P43zI+yi8uwbos=;
	h=To:Subject:From:Message-Id:Date; b=FtcHsRJ4CqbQGKFzgAEVJU/DRWEtE6AKrcEADhC0CbM7eoIucRCeG6bIRNYgGHG+tF50eC8BG0RpCi9zmkCZ1w8mMAv0pi/1HSfJ9vXqmDzP5Al05RQa6MaaMxxDugRSo0k/YdC57Gff+rkMK2oHPd+Bo1dsn8xtjM2iBmnxGnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u11A90so; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u11A90so"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73680C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706378896;
	bh=jGMXrsKVtjc+n2t0qQHZV/bGbWJo8P43zI+yi8uwbos=;
	h=To:Subject:From:Date:From;
	b=u11A90sofVjRkkSnXXL3Stgq84PvIovVp4KQJsuJ9ne0paVwRmKb8my4MGI8CoX+F
	 EB25o65RXOX8OIr2iR0f+3bnk3giKlA4NfIQ3vH7vAGBcCCsDC/n7XBjf/09f/mCCh
	 mJ6QJlLihh8d9BLB++K2d4IgY0R0IoRFvNbxlZBlgA3HQbuFiWPtutK+4mIQWGYtE/
	 WLvgg1Rx+IhbVKFIpNfxYLvves8iw6ittDRQr/AXuBkqaEAtnwNSNPgCCA8QYdv2t1
	 XkRQ0psLRPm5gnu+9FDhA0/f38nuIm4j2Y1/GEXDbeXITh0iEA+c8EiG+3kmg1R5rC
	 lg0wY9dKDz9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE30C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170637889637.22157.2651274486904291143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1287db7ce11ad805677573e274b3324997e1129e67ce7162553273236dcab46
Date: Sat, 27 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706378896
