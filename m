Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6308F4B
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744DAC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670452854;
	bh=jFJ/ffHmbk2PFOaK4ezoeHkvCQIrTna4z2CnQ0ZjC3M=;
	h=To:Subject:From:Date:From;
	b=bq+ryGjWpM+9oavGCbAwu1S3IOJX6a/Fat9PavNjgP+8LQgwwjArWixLyvC/SelXB
	 jhd/S97uVcbto96dg/v/glMtx5BbpXWWv1d83jWG1FRF8wLix5WeRc3iBcVIea1xf7
	 8dEwAQyxmjIwm1QLQYd0TxZj5ofZElw/7rKY+CmR9Fd9sB1sjxnFKrFyOSsl+bUtW4
	 HhsQ7zitKiT4Z/XVKgvavjt155LiJEwhmhGos7fYeXU4j23S7BloBR0t9CppmMGsq6
	 mtVS+XiHq3sFfPdxrqWlpmXobvfLCUEvDPi+99uouklUZ12awV6o1kdTmkDhMBTehY
	 eyIKH0v2dR8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AE2C63708
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167045285432.26483.14583533098919831107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d884ad6d19876dd0e8c8a781d9506876591df0033c21df65f3152e0e9f99c6c
Date: Wed, 07 Dec 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670452854
