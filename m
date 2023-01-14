Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84CD367
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82DCAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673670687;
	bh=FN7U/ISzSHus4lLbyhONPFPhSJRTT+9E/XbDmfdovEY=;
	h=To:Subject:From:Date:From;
	b=gDD34yrntEC9LBLIEL/VtgCrF4EcWMhDbtkSJT8YGtGayDueLKuDfIun8Gmvm+2Dh
	 l8+bdgMuf/qxmPlGBUhofD5GRgK1TeQZEDgdptaf6YAcH1VOyTsjbbXY7u5YViJfaw
	 S7aFj0LB187hlBr8Ty5AilbiEWGqp7MZJw9WMPHxxuKUuX15GO4//pSDKOmjlU3tXG
	 NG+yC1E0UxFbEwOE9hS1Xab4Jt/ApmXLvyNjC8mQ6gZDuZfczgg3dRhL1C7eag1D1c
	 SNK2rvRpG1QeXrLsgD5OkjBXZlnPFHP63CgD/oCbYXHlcbvzmgoum7ky4ENijITZqb
	 vCOBfhwfnPhCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655C9C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367068740.21162.7452476352224655661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac4ad1825fa0977ec0e943cf529add8b8d46e28d428fff43975890344f3a047
Date: Sat, 14 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673670687
