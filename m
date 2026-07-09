Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3834C23372C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783562914; cv=none; b=kN9kXQK+n8RGKHnTmP6mYiQHsCOBJTMt3CQzTneLfy1a09iHWLX6jZqrL+2WCORY0wsc5cfTu7q++MI1SIHpvdsBzG0GSS2lRXO4ywO90Y0mC3fdpPg9zCGWMw1D9vVQI3rR+Cge7uKPcKkzh1D9CUotVU3DLCu5YwGqbl0aFBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783562914; c=relaxed/simple;
	bh=ZCaXOZffbq3XF7qOahUotjO+ABK6gHSp3UR5rpkBFsY=;
	h=To:Subject:From:Message-Id:Date; b=NpVI3R/5HMm9S1SDvle9b840jRC3sfz9N5xyeyLVMgwSdCMKFIjt6IfsPf/+ficDqIK4CyW8klQGZMGx3qbncYlOYirbQZyCDcIzZOPm6MwaIMJMnZEFI7b0vJisoJmbxTIRFciBbmJhrRsLZAH6hlzC3k6ekW36TC4PVekGers=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyZH6IqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyZH6IqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBADDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783562913;
	bh=ZCaXOZffbq3XF7qOahUotjO+ABK6gHSp3UR5rpkBFsY=;
	h=To:Subject:From:Date:From;
	b=MyZH6IqXjMADK1vuJ5Hu1YiKzRA20ocYq1cNTBm5Ycg+BZXhXV0e6rVQWkpFDRbuz
	 O+EDLWNmD2GTOGhbEOx2FAN8JCdPAqtssFg1xR8pYv/rR1jS84RsMIKEUQn4wAlRdF
	 QPj19Ovo9iP0ifM2BK8nu8A1O2lyo0Mi4nX1hG/xcth+3+AsWwR2fduGr/e6dC0Qjq
	 m/VhT/jZsTkO8nzw/EkeNDzsG3G7ddGwBpdTSbI3CyUGQlNo+vkTWSvJvIHPi/Ss3N
	 QSnbNiMcVPU44DMDKh2IIxoBQE+aOJUHCZRJg8oc1KE/e8+lT7uScE6eTzk2N3rkQU
	 MHR3eZCaGlmjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84C1C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356291368.29306.7808900664171646285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace4f80c889079a50462b1223010073cf9fb7e228319ab0648daa6ebdcade813
Date: Thu, 09 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783562913
