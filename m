Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B04E1FBD
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 12:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B30C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 12:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676722565;
	bh=oBpWfiS5jQ+Kzud0k2HVWdRTwcIRzfvvWGKZ11OMFIg=;
	h=To:Subject:From:Date:From;
	b=fQi/xXOT+JusVFlTHfJv/kydxX6G86+C2r4xj2ciOawFbsW4iI3po4VGP2bCaZbG1
	 TvskxpK6MgPHQredK2AECXB0WwhQGFA8ZJdLRc8sNGjVw2hVx2N9sPAN1A6HCi8w07
	 VcPushLs1271xwaL7yfkbOGllRdXFvXazFLjHPJOvk3stSBIECDG/jxIs2QTxGHhmC
	 lYdSu4m5tgmjUsq/XBkkY2JyNULeJLvDMTDPXNLbamFQrxu/SwNZ+Xh4rHuKPUF3n0
	 J/AEi3LSUZDYr1+ldr4hAW5R0q4S2Cn58NNhwGtrRzeMw30/QoRgYsExuHmqLxMEru
	 jKqha/2wwXhUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7ED7C636CC
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 12:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167672256574.30831.16353721691937703614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3dd5b3f649015794fa9b79865055183b28747d873655b833d506e757b425311
Date: Sat, 18 Feb 2023 12:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676722565
