Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4859D22ACCE
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744885795; cv=none; b=mtbRdNEvmXvnQaVEXDiixCDASH5Mkq7FQ3zevCS+AHYPr3XjyGKOMH5bxutshCz3ej3oqcFCGIT+jpBsF1P6y1dH/UJOglQKbBEmNVRkKN7ImpESbh902nP39ghQE8UX3dNZEHEsietDTWCNBl8p1rdqYD/7nKPG4I4DPJSysMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744885795; c=relaxed/simple;
	bh=GwEHMuITvC36gXRi2sSm6+NWbpZAKPj4xsQnR59PPjk=;
	h=To:Subject:From:Message-Id:Date; b=ShihCHKwI6lhI8zK8BMWCx0xgPEC5FVVmHkFKJMk5KDsofPLABHWmBxQoYs2nT5E1+A9AT2moC2sVfoFHULEJnkIoWDJGZ1OBbRC8UXX0neBvlA7uHiJrheRQZfaYkJkYtWzxxvUr4hILqqr53Rp/oxaP+MmP95rFptZPOI+xQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7RY7/7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7RY7/7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CB7C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744885793;
	bh=GwEHMuITvC36gXRi2sSm6+NWbpZAKPj4xsQnR59PPjk=;
	h=To:Subject:From:Date:From;
	b=k7RY7/7BD/QY4+kWIE+DI8EvQ2Q+lN2hpmoMJUUMhblReBETgY63R6asGXX04F1ZI
	 oFFE2Dss1HjOokKTNjMvZYrmOvSXWJcI09hbsMMgXUNSRZhCq/nB/gs1CN8ehefCCi
	 s/WI8Wfp2fU9cL13XavNu8xCZZPS+3+zc575V4y9cSnI9pyJxAQZAZSP/Ll3wuYSRS
	 tz3AFnfHhm7j/MHE1956GIAnEAJKX2oDgEuzDHOD1kKZpy3no4qjJYrhWlrj3D6jlZ
	 Q7n3HW3PBYtsB6j/in+U2LTsAXdcggrUirHToYy0Um+v0OVawYRTyTNhDwhbLxnXRx
	 XQfHQsyKGynaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE15C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488579368.15438.16742807090027367838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e875909216a18a4756b197cec809e9b51f1fcc55106a84d09a078e82950454fb
Date: Thu, 17 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744885793
