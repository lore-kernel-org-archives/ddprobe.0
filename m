Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59BF7B
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9F4C433D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669170054;
	bh=vNyxC5pIZ4OcAetyKmEL833qbaLg5IIT0wkK4rMd3G0=;
	h=To:Subject:From:Date:From;
	b=LWWhhqFd71/2I6XiXhlyRSlE1kLVtBSzeq/2Bvt1f53cqjsoKiVNpSS2UPrBGMW55
	 VuiFzKa8H9vXxkq4++76XvR0kEMNkSm/+dqNxoKP1PJmaehvrNC8q2wInYLWv18lgy
	 /FTfjOcDP5GQ6R8d4/leajYZ6bDzf1ta3IqaWSiJ828smWZgD7cgH1BLvjHe9GWZpJ
	 XNlU1beKoqRPFITTfSGVx6bNO0CNemkGfiAP8DiGtXkUG126MQdDIxQwx89V+PO6Yy
	 4BL0jyKKNmL1T6LNLDMX7New5fLVig27cAvgnAOGuiKsGJKx4PsLdHm3OwsPKkkC6b
	 o6p1TN14RTOnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541A5C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166917005433.11687.3357925981804135970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911f061d0333b21c965405ce94cd61183085249524569b7a96f6340f6529099a
Date: Wed, 23 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669170054
