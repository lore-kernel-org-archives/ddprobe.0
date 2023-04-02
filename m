Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533F315A2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 06:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F354BC433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 06:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680417306;
	bh=ONwzkMmNl1tWyEBbxiEGGg7/nedFd95wW74BAmM6/Vg=;
	h=To:Subject:From:Date:From;
	b=iJzi+jcY1AXQbjfSdkxktgH0UjOpMG+Lish8ld73hEQl206LNUUmuFI2uiSVdfgTX
	 eOJEcjDV349SWJuivEboTU1IDpoE40IxxYXS1+24Z6jd49LoccmP16jrW1OIRIVIyL
	 zr+E//Ck024zV6tvp4WpzSOxfqDkwYoBMHyq/bL+kMU6eSfiExPY8G4zuo39q/+3lF
	 n8l2hI8bdU8jNDHGpZSEtyIDaAOHRoO4/h1b+jzyouMaypesNTCGm4iVhBqKcEmjwG
	 SnjBH00OZOtgdkjAdVzkguXbayHXb8fKda8mnGbHZNB5Vq0SsZ12sqnI1RKRdYgCA+
	 aUkYKZQEdNsJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4435C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 06:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168041730584.5079.3655682837593370808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcb13d3b03a03212fe1a693e5e1e743cb6bd07dc806cb582e67d09275fd8013
Date: Sun, 02 Apr 2023 06:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680417305
