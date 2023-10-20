Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C381A71B
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6kWFLHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 958DFC433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697844496;
	bh=Ye90eu2azrdazwdau4LfheG9n3OrCBaPUvcV0pzvcRE=;
	h=To:Subject:From:Date:From;
	b=j6kWFLHKbV30sYdwu+Cfw3A/3z2fV8Ooxh2gN1+JukTdVSBjBksqizwqRoBqlGPCy
	 WFIRQ0cSrhDil9navzNu/2IzmN8q7TmfLd0VTTgRpd2P/nNsyTxjy8XvNSwfZe6WN0
	 Hy2Qu2WCrKYCtaYRyFdS/BRr9EEJuRoB8f92CP3o/H3llJZ1uWSWhoT1+3e0/Lmj9E
	 K31evIHFrbQN8yNli5+Izl8onVHfEIjJpyL1fNrRWIuQhJe+qAT98vLa76i81VH6m3
	 pP/kLndiUcw+7rv5eKjj7h3PZv6NGkkkHZO2BU2beFjVlohc0Ro+KraBIf1f+7bZNW
	 l/7UuIhZWC0oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7321FC001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169784449646.22048.10943943950919250450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02afe42a43289a26e94d132457830a8815eac648698dd6ed146ba3d9fe002f1f
Date: Fri, 20 Oct 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697844496
