Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D9343C7B9
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786459834; cv=none; b=LHNfyd9TEoBQ5bgVxan4wBnQVl0UlCt/O+rbtPMl/V20uf3l/sK3S+7MWtdQoQD1oFYEhPpcYtfZ3LVT8FZ3nq+oB/G13aYBJkKBf6NFmnjhoBn8+r30uLXMZOHRL+/1MPL8ZDP9Ckl3Vf0AK43wTPWGd+ek0BG6Sv650iljwR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786459834; c=relaxed/simple;
	bh=heUQjwBiTse5Fm7ADYFg7ukxuu2HVtU/kDwEOI2QfF8=;
	h=To:Subject:From:Message-Id:Date; b=OKbLDVfPiQGP9D62vunKSF6KJTWomhlGc9rHCZ72UDHXUlZexDPSyAWXg6pm2SLLtINlTQRmXoF2u1YXulrMwSHN/WZ6x2chisGzwYzFCx6iNe6+nX8q9xCb+anYvWm09iec5UErDqXIbDk5Th+8AyespBGb1vGHmSni0UqjwsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNxClvZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNxClvZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC8BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786459833;
	bh=heUQjwBiTse5Fm7ADYFg7ukxuu2HVtU/kDwEOI2QfF8=;
	h=To:Subject:From:Date:From;
	b=BNxClvZcTw0OfiwTGyCEIerNb88fXMrwxeFJhblX1WifRJ837lplZo28RGVqGWVhz
	 G5AF8/WieoJ2SVoDBCeQ3soROD1lI1nWj3SAf39idpkMVIFX3HmH/twbgtGSmj+g5C
	 2u10pJY2ZYdLEyfc1U/LJFZTZYcLycpCLPpuZ5bFRIIuGWObLqcVZPnfTHVVsc4fcq
	 Guyel3Pq/VIcIwMaBRinFxs/JV7hUij1+s6pzi6/yUAHcH0IW6GL1Ka0BLI4k0ZEpR
	 GVzrmyedY8R1WE1Yy+//owDeTB1Q/v2mLDfEAAmkBgjORvTxCtpLxZrs5c8DjNLuzR
	 qvsKnl5xwFKqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B36C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645983368.546.4359235048745744393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53d090c78be19ab9364fdc983f123a19b930790b4ead5720f7c68f4c8c61b81
Date: Tue, 11 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786459833
