Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5E523A5
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 16:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD70FC433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 16:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685897945;
	bh=ZNjMsoCagDz500UOr3IRvQZYd05G1oJFIJjfo1ceYK4=;
	h=To:Subject:From:Date:From;
	b=GdLg/dTvSPTKOIKNmx8RZPaSccQMhDnNFz2BR+SDRvhl+gbgFQIjeb0MQfyu+zFsw
	 3nvAtwPd7Plaxwn85fevWM8p0dzvEUB8wqtfF0eD8NtyrkZxoTyWMIEaTMm/ol7XX6
	 zMab+9m9tCOCGy3CO2GqwimH4AWwx+fC+MONAUJJVvXR3EkOsrgHNIVvfjnDPPW0+c
	 x8jKIeHy63xOp4hHQ7JKwVQfxityci5zPE71FD1xx+SM4gHOwyDpclGKBbp3T1QGOa
	 5MyS4NWhR/mpDvJllZWT/Ij0egkwe9imKIpGGDVQadXNs/RCwDHCCOuY4WgwrgozgR
	 DwAA+pwTZaqFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1232C7EE29
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 16:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168589794578.29196.17083467225972122595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0d398cbb5861e29923a51d35a3f20e358e0099509645e8b072fe27b17bfc32
Date: Sun, 04 Jun 2023 16:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685897945
