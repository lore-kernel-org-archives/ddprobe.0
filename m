Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516379461
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 09:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE94C32785
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 09:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695290108;
	bh=8AE1FNOSvOLz9kndn2a4RXUFKS1f9pdG1xlgUynGqQ8=;
	h=To:Subject:From:Date:From;
	b=FrXl1dSIpuihLT06ScGilB5G5SOQ5LWGVGy/yJU3IJLzZ3rUffzjE+CWr3SOqE6pW
	 q3+/goeuS7GIgWM0akEKeY6E2rgYk5o4GsgrmPNGnxLj9KnDIsWWQzlrkvS4qOiRad
	 TKwgHlBQiSyVVAP9iOqc6Dwmh5b7HUIrE/7kjVNPT2t01t0xsDS/4WbJHLJwPS6iQ9
	 fGS8XUeZNx/Q5/xnQxd89h6n4SBWiFrGCLv9v2Wdxidlkp2O7ZlGdNUOkp2kjan5he
	 pAKCKJP/ee9pUCaZj2b8mAaZoI2JqCuyI/N54M0S6hyFPBhBcEhjAcSmUjmRQdmURc
	 hnpT+fkShJK8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B030CE70703
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 09:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169529010871.7658.8777880789438518291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1606b7396b16ddc61fbd027e4e197e043e4f754a92fa2c234c5d54046739e6
Date: Thu, 21 Sep 2023 09:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695290108
