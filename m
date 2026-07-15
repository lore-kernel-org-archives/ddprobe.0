Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4E230BF70
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784095714; cv=none; b=aRuYMz5gNiILUWvkxG47JN6Aot8XhT7cMeCJml7nfdFOFSE258hjP4M56vZTK08TDnrtGTTewbNkjeWNIplqNqy3CI1yTy+QN0xBF72lyqiwEAGvSCljDynH5GZoa+xO1Ul7MypI+cm0Wg8h14xkGwcka6i0H0ciRXjPvgHlxyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784095714; c=relaxed/simple;
	bh=Qh+EATm/EjcBDsG9pwBeMcWXa1LgUi0RNbb9mNAqYpY=;
	h=To:Subject:From:Message-Id:Date; b=Fhf7MbcyQyqVEDaN+5DAbKXD/sPaBXqy4Qs74QvDC+uIvaoUW6hoZeRVo6/kVbr6QZAEmaVXE/xcltkFn+/OpcplHCQuX4gAq6K1Y2F72OgqCNYfAF45C0iPxa8bEuoB4qaESOEyf/TNWMX9puluoOYqyW6/HcoxAiOLGMu7fcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndUF7bDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndUF7bDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC983C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784095713;
	bh=Qh+EATm/EjcBDsG9pwBeMcWXa1LgUi0RNbb9mNAqYpY=;
	h=To:Subject:From:Date:From;
	b=ndUF7bDh/KoswAbFdT2fU51goH2xN/jb4pTh8i8uYfmrIKyievc/EZ1IpJihe8HDU
	 DZ+qEFGMrL+h9TbXGQqjSsBwjaWZuBzvvcZrCMqBX0ItWct7MpbcN1GSk2AS3gB+Es
	 nriwmeNvMCbU+gDfSb3PjsZZOmxHKsXTUJgKo2RuD/DV+rIs3EP2MT9JaLyiETMy0K
	 4FsGD5J/EkguMuh79Ei+qfDIgFtrVIz5qf5bHos8nxYirmaYkwpmokOv4R7esO5cLg
	 ahyhd6S1fNJ/rLNHqhvzydn/wh4xy2NprJcNLc6e+XOqW1BJSnu+yT75Yc9D8CthlX
	 BSgDrsju9yCvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A872FC4450A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409571368.27320.2980127373261315489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8885bd99d77a6b739f4e6de0ee4687a0228594493e9b350fa877bad739f89f21
Date: Wed, 15 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784095713
