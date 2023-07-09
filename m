Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540FAECA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 03:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F63C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 03:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688872029;
	bh=YiUPso5orzudF744AYEG1slzEhRTy6cOwElAV+2pmFg=;
	h=To:Subject:From:Date:From;
	b=PVBlBPlIOM/jexJ2Xa3hsiuWwpnQnxU6xeLcNVU+usLxmZUdNSWxQ3VAjGbztxwTx
	 8dc3CeIK7VU9njVmPdPjzh06bnO2c+wAOY4JL9BpRair9bbXAbtuNeS41DhhMoMT2q
	 ZR+c3gNGlQo7os89YCQlX7YcsmGBZZRxCRSCfr/t8yvW3iHX06icnTKiBVQ2rrs+sI
	 i98eDUeUSMPMc04grfSB9Ri00N0YCeXJweeeAH20VTqiY6V0MMLmmUCUPuow4RpXOC
	 opect/S1H7Nj/mdyvuTyVG5CfUlXzu+VJEL7tFBX+yYZB+oKUUrMF+bBDtfjTFcxCY
	 eJpwNGuBJaXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A893FEB64DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 03:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168887202868.1197.12237986732429346590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce170ae31431e627a03115f833953b427fe592e88343703eb205375eaf2b352
Date: Sun, 09 Jul 2023 03:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688872028
