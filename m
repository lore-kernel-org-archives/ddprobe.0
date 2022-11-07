Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24CDD51D
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68589C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667832654;
	bh=sTyWXdsRXu0V3fA5RWMqYXVqMIFfuMPq4YyJLr1K8Ds=;
	h=To:Subject:From:Date:From;
	b=swQfVmZvKq6jx3KPiJXv7JG0aN5sNBxom18bYu2c3Vi3PW+AF78aRRojSWFRKIN/B
	 74UEYy52XJLNW+o8e+DQjSx5qEgK50Ig5oWLDN7aICaulnT/dBMqdWJcA6hB81JHMG
	 woH0+RAfMYRk3d2ScWl6b9zpdXcqlUVDTKSzm7HS64kqljGloSK+RbcnJSyVJFkHAX
	 yNReYv4UcvhKBWEyYRpJlTOVK38dwspVSYzEnmHg3UJ17xlcZiOXVYCVSHZa9+73DA
	 G5y/YT+cDRD44kl7/yIBxzOmix1+Qvgx7s0FiViPmaYmr+r86ruwcLSIZuOsAx3fD8
	 krpQF/38t8sXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522B1C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166783265432.13360.13431942264805848249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54675e159e1278b42dd0df2be7435af3c370877605d6f66bf49efc73640ecff5
Date: Mon, 07 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667832654
