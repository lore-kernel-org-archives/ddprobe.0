Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D99EEC8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740882534; cv=none; b=Fb4oyOpoJhyhP+TRrj5RN1tjxvJFqgWywXiHUAQbQgQwwQnsPD92wV2YMuygKXgDZqIMcoJgYl4wWqxGZTQ47zqtunCxEF1M/sU63OywxUvStdCL44lvwf/gPtVq2q/X+zSVJxzlBwLpC8TjgZfhiTC+JYNEtTvlzcnLQY8fLpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740882534; c=relaxed/simple;
	bh=m79EmN12kMiOZuE5DQRxVHIX+cKoXAN1p5tegt3Aa2k=;
	h=To:Subject:From:Message-Id:Date; b=KrpXBAlhfJac15hCUUQvZAkgRIwuAaSC6ZitcqvRkqNylczE/laTEi7iFNi4Zp0/3HsBPsr97m5Zhj8Sta1S831WHzXSqnCAsGu/3DyVEemLATorTBgPXYRl1HvaLn5wZwqXUyywIzXHcbqBHDmGFd4/woLTzwlX6F8Pvsjd8w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMfbkgMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMfbkgMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F72C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740882533;
	bh=m79EmN12kMiOZuE5DQRxVHIX+cKoXAN1p5tegt3Aa2k=;
	h=To:Subject:From:Date:From;
	b=gMfbkgMub6xVWMXg7T++CIc4XXhGWktf8PBOIZQb2OYcBcsijvXVhqAXx7t7MbgLH
	 NzDntqATblq29gEWkGXW0CYG3oO3ikAKygQY+QdFXv6bVnr9JQOVfrQpYZPkX76sVQ
	 dLHB/gH/M5QiJ9ohgmxDgBFAEUyxe1okJmDvc6Mrk4fXJ1BGakD5lnxVdYGTcfYqhc
	 gC9JcEUDrrhqWroM7v0i2Xfd6Wm9QWtpCtciUCpQseCueXbhFPpQpFLVERnRFBRnqW
	 JUsjqb5sjDoskhpG0/nvSW2Q2xOk5o3ybNRpbz/m0KSMseUT7x8ynPqhorBxjjskfb
	 RM2+2+KL/Xe3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52FFC021B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174088253364.9993.7406140664775146486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17eef670bb942ed2397c17b09195a0d568dd2728dbcababcddc258d8cd9067cd
Date: Sun, 02 Mar 2025 02:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740882533
