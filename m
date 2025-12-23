Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220362D0C79
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766459634; cv=none; b=cq6XXSoH1DA8zPVo6fOemapphhnayFT62Ea6Wbo7sJGg6stq2bJe2Egz+Svs8MFaKtTRNHRQNt8oDsNWaffEm1nius04mct5CuJZA1dv+LpeE5uRTEOIxNvnbpwX606fBYQse9+i4yDOdd+sa8vhjBykV6ym4rmwTxz4b32BKG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766459634; c=relaxed/simple;
	bh=z6G+fc3S8se9tY9VWaP72oc7Au6+T0tyoX9ajBXOx9g=;
	h=To:Subject:From:Message-Id:Date; b=Tpe0Oc98/swCc65bm+5lAIFSdPURwOc6zbHZM2fwynmnGton1xfUMholOvHYDLUfSZ3UBpIazIBSaI1SqsZk+pGu5tgUI6OoLV97Z5g26FUEivIi7PXzXXfdgLbeEeKjfi43TaW3ABaKmgHHsgLfNIVKNHBYSJ+Z6XuZZEXf11A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxVBqMKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxVBqMKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24B6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766459633;
	bh=z6G+fc3S8se9tY9VWaP72oc7Au6+T0tyoX9ajBXOx9g=;
	h=To:Subject:From:Date:From;
	b=hxVBqMKGn9180/WdWflWPIf/WNKzb0Rryn7jWuUGX6fKPbKF38hvGpvxxvU3OfdU1
	 NlpV+XFLOGoFJuaB2ajv61DHWNtxtpBanl2piofe+ZNgP2z4DDV5ZNToVREKFsJKiA
	 VvDajS69mPYHAQL/qQEMJiSYJq0IyJwroGEW57/zr+Y9nu4LDFx7J67Gs3B2SNGl85
	 1z+GRy7890i4sSEy4wXTPLRXB03f7FuJ15v69dWZQPVIGm7SMneMCC/MfF6lseBW94
	 ea2vm+xCVxz+pQuA7Xyz/WmLSbqQA/rMxtab3j3PuKGEkEjYxugRBg88T1rMONLsxT
	 1yyXFZmMXt47Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C1E6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645963357.23680.17264200897143289716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b99965e01365d4e20f75ca0e29bf17078f2802ac7f705e0a619898350137d5
Date: Tue, 23 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766459633
