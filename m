Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBF72561
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EDDFC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663132853;
	bh=sT/qWbsYv8KNyx4oQi2y+m5yWdvXajFpBLuAZ2UkTpQ=;
	h=To:Subject:From:Date:From;
	b=Zc4ljT46Q/zvNVsoEJEpl7rAElK9kswzcoPMFkfAV83hEE4pxDmDAVMX1Fhww8Uru
	 wNo1AV0Kknjj3Sz0lMnGrInUr/Va9xMKbH0v3dRIM0CrZxsAz1BbJB4pVAsgIfPnK5
	 qnOXYnZ8g86mV8e9Wp61Hwhwmf/No7B05WsFz7Mvw2hIssvvKldbX0UWoNMCwtsPzE
	 UglVfiezw0RRywxVNolHE3ncH11yhmyR/VLyjc2bzKQWSnVykyYpXkIezwT/EY4FA0
	 qe97qJbxKpQZF0mDzZ9jpf8QQW72VIJt7sLn/okisWk2fv3VPAQzr3SeaMr25tEFTX
	 Di4buaaGSpwYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C93ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166313285333.515.6792346978980728220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0b26561ee817ec76e68d9bb79effbe717b394010f00d9fe2d933132d21ea63
Date: Wed, 14 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663132853
