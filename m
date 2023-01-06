Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED2495DF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC137C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673040687;
	bh=dcl87K/6vCQ/OBtlghRZoguQBk0F4LzypfF5tBBs4Pk=;
	h=To:Subject:From:Date:From;
	b=UPQmqcKK0CXT2qPA0AUY83HtfXbyMM2vj/VRX790/2/7RALtgPdeoGHZ3oAZrszgX
	 xonenb/toPGjLPpJrjU+xxoS2XPG7JvAskBdD0T3RcEwurdRULPwTK8jY29K2DQpNH
	 GybPGY8YbULH54UKJz2wNnexDBSck9G2R2P+QnL2IjXZzSZusim0RNrprEr5bwLheK
	 Y45lH2KeMQ/czwLy0exEodRvsEHA1Di71XP80hzXItqH4WB1bRyFaPjG/S55SaBaYL
	 JUCO6+0w3hwWbLaVPDlqAVMn5jc9h8egOss/LWK88t5U+40sAjhVM86ysIKbXBNvlN
	 p7AfXeSra6n7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B992C61DB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304068753.23258.742415941131168124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ce01d592ce09e430eb4a7dd845427e3544836f6d0466b3d87056a6580b9178
Date: Fri, 06 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673040687
