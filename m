Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3756E24BBEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781346994; cv=none; b=soIZxGTQRqSoKSxK0vMn2YtrJJPmtA6F3le48UhI4f7wV1OBP38OzsqSXgVxB9h8ECAl8mWROcmEsuXKg4DDjOBYYfmuaj4h5vbjYTv4oHD/6wIR055/0Ib1SDLuEbeA3tNs0VYJvhsruwu+SZqiJ99WnR8Z1BpLcsyT5z/QSyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781346994; c=relaxed/simple;
	bh=xr8g5efJpOWxDpJHGf0GOWw+noyLRoqtZ8qJ97ZJujY=;
	h=To:Subject:From:Message-Id:Date; b=hbON/qTbtvmPx4kZCC+7WAqJU2Mxs/AetkE7/FHdn9/1cCiagNsx/2U08Vw2wI6khemiQqSiGUhdt0zhuqhkb60zi3ipq6+tmcBU8UEmq/k59bz8LA6F3Q38BEcxDy/kyksCWLkrE5rbLJMiJP8MARQU4TQBsqcfbN4Tua+uWKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FK5Cw1oK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FK5Cw1oK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0DCC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781346993;
	bh=xr8g5efJpOWxDpJHGf0GOWw+noyLRoqtZ8qJ97ZJujY=;
	h=To:Subject:From:Date:From;
	b=FK5Cw1oKJ32diYHruo+wc1j4ucAWV+sYymcFtjVuirMyIVxdl4pi/G4FPz+Cr4zvT
	 JkGqarDOb2wXDkViUBuRL3r0NT/CFvgdgY/2YdthYs0VHP3v72jk8PxnJmEauMAVV6
	 rVs0VjzSsI9lZ0/uUPuJ2qfUf9gkAuMU5LWzyUAffD/Cz8tHb1v3MCwnQBA9col1iE
	 0ATJlUF0WfrFoUuSjHQRPx0tLcF7ijoIEGvWqwqTwJZswdeY1szZCrLu5LRQ3QYu5h
	 hZvVDZwC3eLg4XFaucWMuQOGpRM47LlrREHLoZUmBtUxCw5uA4cRK1E0Ovx2OXUP4z
	 /bhUhFYuJK8mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA2FCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134699367.18981.1770186000436532168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348791d94cadc65d2c11968c270cf648720979fbbefec08651382ab06bde04a4
Date: Sat, 13 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781346993
