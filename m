Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD8410EB
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CEAC433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667544054;
	bh=kI7A+A49HmVRm37ursan2OoK1fqFgjJmPtsHQfpOeg4=;
	h=To:Subject:From:Date:From;
	b=BOFCeBOObcEKCCzMPBg+OajHcBQUN9xMmlOG2KfBt1K+tdmOoWGE2T5lBnRTkc+P5
	 29M+oirU9rPtwcZah8o1Ajx7qAhzYQGXTgG49/+aN4rkSru55aXBcc8tziRbsQIIxy
	 P2nteyCif3uet1DECY1An1Kc1POHkbA2ObK2JmoXTSGpjGqwcQO4cXDbQ7B8/GTNtY
	 wFDRuiGbLX2vJN7ty6d65stu1XRoEIMfQxRgdFGuF/CUoCkLUyJxBGRj/SbkKodNKL
	 vhKun9xGB0pv2nhUYPosYSU69VGWEi8QRXjECz1Mr8+b29a6L8clHWx+ta7NJ/IbA1
	 i67MQf1LX5I9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F25C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166754405433.5592.2008921290508509853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc1f070611ccce7069a34e468eec478b8da2c8b8c7b290b49ac011bc61485b9
Date: Fri, 04 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667544054
