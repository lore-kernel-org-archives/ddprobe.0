Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F3A33EA
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747585794; cv=none; b=iPnbT+LicUmED0M/inO/GlfEGbpXAIdLBdJe6oDrEfsCBvdgbWQR0gqX3uYgunU1CzRP0JBfdPI5ttVEm8Oee7fHT0apY2c2qu+Io1RxmNLOTqC+YPKrbpL++NycJOh6pzhwTazOd/xAdHFL8L3KaVoWW8GH+qbvrKYWZNQUXy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747585794; c=relaxed/simple;
	bh=hK+JDtOLRwODlVlG5jN/EY8uVqIR7v8VzbvgL85awOo=;
	h=To:Subject:From:Message-Id:Date; b=kpFRL5vw9RcXPOpAtmvXOe9lkyRCnARsY1dkbR5u3KIMzskeI4hEGaTbZIR+p2YzebGChMiaY5Z82n5CrrAp+tb/OXmEBfFRumQgDBWq4+4tBDLS/+HMXU/zL9BJybxek39KS//+TEw8LAFZkcqNs0OVLn4/SwXJax5XsR6h7rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Liqt/Sv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Liqt/Sv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5E8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747585793;
	bh=hK+JDtOLRwODlVlG5jN/EY8uVqIR7v8VzbvgL85awOo=;
	h=To:Subject:From:Date:From;
	b=Liqt/Sv9x8E5O4Sscy05jas6JIK/QiuGX7XL9CGKmR/tucrlQjLImj5c6r3iWS9Z6
	 BZINhoZ1kpQBeL2HEJdeR7Ef9LIL1oicq2qsiVkkeqLlDmw5MaJeWlJHlc65o7oMpW
	 AAg4EQ8owGHOEYM7uTKH4xcDfTWsgLTugpixC8HYDEY8l5mRQ277GixH06ZSBF4UnD
	 qghCTdSpQkxLkMWFKPvQTdSwH5SqrXlZWq83F0lV+JdVqWLPA1YDI887JR1LL7oWZf
	 wRXth/7TcfU6SSSr1awrtTTGLGf07pont7Elh9Kb2IEoJ3B3S/yg7qX9O8L3WXAIkB
	 Ww8Dp05PcD7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDE8C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758579357.11801.12616536156209378674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8f11fbac489ef5a85d602cd5f46992c1633afb8f52ef9196dcfd2e6bc0ed1c
Date: Sun, 18 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747585793
