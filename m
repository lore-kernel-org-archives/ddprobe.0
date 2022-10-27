Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86E31C13
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705D0C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666900854;
	bh=IkHXDDI2B7VcSsC+BwBJjVgHyv7T+mmcEWcTdfi0P4Y=;
	h=To:Subject:From:Date:From;
	b=gvO+jeZj07x+WePXWiYGELTYzPkV60reG+mePnnXFRr8vpMHpR3hEWoWf4c7hkEdX
	 POX7Jty92hzcHd3plCVWtJu7T2myle2GXBVdv4Y+h5ZzsHFBBpBkoUoaQqTK1CypbZ
	 fcXywnvLSiwqIplA0MF/b8UpVerplQQW3NA0UIvjgCJjK+HSf/OziaUZ54vVKFTiJL
	 FdvwQ1Ub8/TNFKRaWHDXIJ1Wf1rlm0D35VHqBP65DnUqH47jxMllCyHCDXYPFzF2bE
	 poX9fFt4v2cr/0UyPOcAslxBbuACP1NDYBP/kWR9t+jpS66Gjbc/Fvcp3XzXqdCkAW
	 yBL2J9desSoKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557F2FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690085434.9478.4030402642641330060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5833ed59b92581232146643c6e37028b30621a38d1ba88413c86eb9e880aee
Date: Thu, 27 Oct 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666900854
