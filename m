Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE60C135
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD26BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688740028;
	bh=GSyXhMQPaIs2o8BwcLz4wkElmXU3Np8sF3YI28T9u5U=;
	h=To:Subject:From:Date:From;
	b=MNUb6D0g4aYs3+//4qiM4KPWGGIVELCB+Sm1pkmyNMgqcM2Kn6nEPscXQWV82ciGP
	 gjVUdpXNcCWN2l6lDE4lkFti9Ncyh8TX1YiaiK5yZILZ4xLECEsrsJHLZBuni5l8CW
	 +s4qieBo+HHPIgc4MKS0ppcAzBQO3nyTjTXXrbnHoaTGOkaAp3iFUgJlNkSIGsZTCk
	 ySOf82rdPXHtvhlECgdKdoVB/hdtwzHM/IzvR+narQMXQ9euMPqRYC4HUppfSM28Yv
	 dEk91HKRHIcVrfpTa/9tLuPeP2FwwC293HoSo8wQrlovMdjR9Ii+/GXSGmrUumPhap
	 ZGrPmPY+Iaw+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB96EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874002876.7921.17168822265714565762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c81a7a36a402a51b2009fad72cd22b4634eaf653a415354b23b05731e9943b
Date: Fri, 07 Jul 2023 14:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688740028
