Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE81A291F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D4B3C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663230053;
	bh=/mAJfdMgVtfMhcDkykjXPiaLZcbnvg3P8q/Cx919lBM=;
	h=To:Subject:From:Date:From;
	b=DP4qfLscWsJh3EPli34L6GP8FWs4aT1pYnecyjzwrcRhQg/fI8Iim7BTIyAE3Qoaj
	 r3B+xiJVtcA3BjxoOmJp+c8+dr+JhIs97M0kjeZkRd8pmL3qZS81iiHblneS3eaoR2
	 InRQpuf8iWAB/vAzXBZJclmVwyP8r4fFe+/FdKJ2ImJ5RaZn0LbwZhNU0ElAD+9Wtr
	 GyfqlhK3vY+W6p6VCTuyrh7IqWr5SPa91JfhI2F6Waqm+7m1tj+cN0HAQTUldFafDP
	 sl08yhSSR+myCsGugCOOFssSnZio7jySJiu/nfCuQT2nLgAv3+7ShEEhfgwvazs+8W
	 TKYYe5ngCjtWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535C1ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166323005333.20415.316035863823804376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ddcbf0696701fcc57d1f2f335584cef1d4f974e1f61c0329a695116966ba56
Date: Thu, 15 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663230053
