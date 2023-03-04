Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C40D2CAB
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 21:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7F1C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 21:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677967025;
	bh=ecT5S0353JwnMKsyIp4htOrxK2N2bJVGzAd64YUHuEU=;
	h=To:Subject:From:Date:From;
	b=VKHh9M5BUdfwgsd/8blDUwVn4U5m48BgYCK9KZYp2PZePJ/klzy7n0nftGaXuiytv
	 oAW0/wsenjoKWpfA0T64PLg/SpcOaM72nIimyxjCmNIo9lgQBxLIhaDydl2gHfY6mU
	 AWAXMEtkVvMPShQLnWkS++2A3zbLE0Tz9klkdB/SKI8N/rz/wuMXTnmD+BNpP/VdiX
	 5Lq4OMKzWFJntJbTw5JdZXR7wnUlATKQNmPmsMFMfmU/9NIjHHxUxVVdFnQ0c0Z1XX
	 kuFcmnyfM6SW66AZqJ7LI+9wSva+z2ZXvkeaM8mYN52n+hc8JUKCcTPk5M6j7ce2G4
	 MnkwhhldrOOSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EC3C678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 21:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167796702572.16255.1638057297530520679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3864f26d3903cb3637241b72dd10d19bc03bb5d8a176d91d0c4be68b7cb4531a
Date: Sat, 04 Mar 2023 21:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677967025
