Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7972366542
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779378094; cv=none; b=gMzkkSG4lt1lRto8hRmIeEuDxKhDnML69U1xp95dhccqIswG1L4koYv49GVXC9ZHweCWKCVs4nPoEHHBk+YzNK7nLLeqVV9VEh7QlAHEZBrKEFNGaS4FxMXTbR2IVbniNpH8/M08Sdp3UPvoIB8XFCmpMgcuh20Wlw83RF4rbs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779378094; c=relaxed/simple;
	bh=uTGxR/eGG/npugVE8qZuv1RyTiZKUTV9JidBvwJjXVw=;
	h=To:Subject:From:Message-Id:Date; b=qaH2x6DiPF9BLbh0n4FdMuuqCqEq5rHlKOF0xfp5h6JNr8PLsbV8QTYd/RUwECt/ylmJe+qgQHF2CIfaiqFUzYjatAEjp7dKn8F+cOONIfDZp1BszqMGkaVlJCt5wd9Frc32ZLHghULJoJWD5WbVfzyh9egUYldemKidK6Ky6tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzBAcVV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzBAcVV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E523C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779378094;
	bh=uTGxR/eGG/npugVE8qZuv1RyTiZKUTV9JidBvwJjXVw=;
	h=To:Subject:From:Date:From;
	b=pzBAcVV584rnk1u8/kdpOLR7VOD+4VxZZk73dPilRKLbDTfTHR1htEl0nTqy59NWx
	 KGnJQWWejO20zq5acLlo/LK4SRy5mxnYKy4GXjOqSx1S/YfrGI4dTBGojuL11iwWo7
	 YIM8EYKRQ06evaXRCOET+Jx2S2xS5yrsxlaljE+LtjQ2EpuaamvDeeQog1fjTdB6Kw
	 MwBwEsc/2kNB4JEDxZi8KDFkhQ0wZRpd4rGjqzmLyfgHsHcySRcAmPRZOxaOdwY9BE
	 7Y6ai5vxwoiZAV5FwC2OLFf4rAD3bd3/++8VUp5sKeyBisrToK1zkRoka/cOhTmK3o
	 4KwGhR+bM6vcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 468C9CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:41:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937809419.17840.9483981848896177439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec250079db794f15610710e0bd0f18f3c905f000526fb306aed7b5e655da4316
Date: Thu, 21 May 2026 15:41:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779378094
