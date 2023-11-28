Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AB5315BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLyNqsaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7647BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701161896;
	bh=LyXBjD3d0tjf/ZfFXg6EKMvBAnEYfLLMcDMQdww9K3c=;
	h=To:Subject:From:Date:From;
	b=FLyNqsaA145MCrsbEyz6XdrNaSC8gkU1U8/sfKgbEsKiqcjYW6Yu4haPCbJkjFes/
	 nyMq4G01ULfaNopMJc6cmGcHY85DZBL6QFE0UZzvBDBhyBTaaWlroTKOf7+OHDCBsy
	 lobP8/d6cCLY2/fKKjRJ3gmGneEVRz6n0LQKdq0XwswV4g2qsy78kt46pHNpT2yqey
	 ultrMVRup8+AuvdXQHwj5qVmz9aLTL3GbgL63dhmR/2v5vAm8HV2XzRugnOXAvCZh2
	 6sJelPYE1ltCHNAgcAG9HfBXk70IJlPG/joWpbncPQMKU+RpBLe+6m/g+gB6pm7lVr
	 u9hxYLrgCyQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E387C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170116189637.14530.2687305817710737000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05be477a2ea4beec2744566543277ad9b2732ab425174a1b74f030b457e64a4b
Date: Tue, 28 Nov 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701161896
