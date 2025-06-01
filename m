Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFE842A92
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748810394; cv=none; b=PvvY2xle1T0XSdc3PLQUT7/+muIEbY9RnAMgM0SiWQzFtrBZ+IdGxCRpjon9HmE16k/JgFhVdzOkRsxn6+E4WTi26o6tmYU3o8JfFBKNXq2aq3zT8kTKPyQRAf4z7tKbuJZ527WgaUpfR4NcmNuJkrqao4jX0K14h2KeVewF2iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748810394; c=relaxed/simple;
	bh=5hVMvqqw1BD7cJfLnS2Inckt5dsLnY1rLs2pVkFuoeY=;
	h=To:Subject:From:Message-Id:Date; b=DJKQiF4mWAxVOJtiXE47J3+VPpPFzXO4nkzvFk1OZqICUGI9AvhIx7GrODEJ3f89CTPbmpkoMXq5/ukpFrl6zpoILNyKeRAbVQ5wf5b6ViR0dS9CgfU5qs6y3QnI1z/lhcAA/joN4Qctn4r9Q0AbL4HrhZaZjgkzz+dzRwLokX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ghspeh2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ghspeh2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F582C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748810393;
	bh=5hVMvqqw1BD7cJfLnS2Inckt5dsLnY1rLs2pVkFuoeY=;
	h=To:Subject:From:Date:From;
	b=Ghspeh2FwRjqOkLboYqK+49/QQZ7G4dGDQpP4DDd7XA6BKhgzLYRCk+d3VF5Yh5Uk
	 sgS9T13hty2vkSxKt0Id8m4qXZ/WowzMmx34bTmRGpbNtmbzHvvRtP0KZABVv7vbeA
	 1yfcdpDgks6fi0kwHSPSyqQqukSJLZWDVkw2E/hZA/uQ2PiPkeyHPDmJnZxKBxJaZI
	 EbT5wkPgfYIZ82OhWSanc/1qcaz35CKZTxqdYEEPIukYjSnLsGoFmTEEpkdvdV6LPV
	 KuQTyiHNjVuc0iNVfZpCTsbR5WSa+UUKH6hriiDv2BnVxsqPnThGU2s29qlm4qqKzA
	 K1iVsUylzlFhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F040C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881039357.8049.12939489750716233111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f2ff1cf74d67eb74cb8a28b52084d90f14363adb8f2779ea6c85e48244e201
Date: Sun, 01 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748810393
