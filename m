Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3892D1846
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 13:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F1DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 13:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679232905;
	bh=ls9TOcZv8I2S1VaVe+yfoSGnubawT+A4Dfj0iR+Sj8I=;
	h=To:Subject:From:Date:From;
	b=I5A01UHIsEooFPH09ySZ5n3pCufamfENPkG/3+yVYHzd2NoJstVWy2R1CrotJs0nE
	 WwhbmWkfFW34NrkNcV4+8s1pUQF80cA7UDVY5wyvk5FHoJ4UTUj05JeBA6HA0w6/6X
	 52xmlo9NPEK3tKCmsRjYYYxFqjf84Lj/DB+VjUp90KJvoDxSHtkigkc4UwGKF+V8jY
	 gQnvH47T0l9PiBfrM0zNm1vdT7pSRbRSOvHTCPcgDsnfJuRLlBQ4Xrh9XUvEZvCL/V
	 Twodi3BYHo/Qn0b9AvahVRt+smM4ifeOqyIkIT53IMxUAiNjm4ETbYPP7+Xw7WRq0e
	 c4KxsDXcNFWiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C300BC7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 13:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167923290579.17154.11795591355489541549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ead4053840a1637e36694910bc53399b96f0f5fcf58782377fb075d4d9bc58
Date: Sun, 19 Mar 2023 13:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679232905
