Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27B55CBC
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C525C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663363253;
	bh=iYM0//jFF4Xh5MXdBmZlMpSgg6LZ5Z2lzxrjO26m3/Y=;
	h=To:Subject:From:Date:From;
	b=LFADrHvr5IK1chXOXO6XbGoFACY2dyfKqJF6H8Njv3OD0cKflLinj0qeRQKFYLjtP
	 sFEh7m7IU79dIXKBe3FRpmqZDuSE6jqbcR+U0ruuecwFG2KiS/g11ligNCbpTNlxyB
	 lRhtvXs4B2eU/BBYMLKGI6fkjldx9itHEJvRrzY2Gf/xDuVkXct8heSi2PjcnC36nV
	 JJVgUqySS56UQ0vF1ysj7A3yOVRfo5OsrZ3b9UDl6wyDQuYtcbAOE2Fkxt+sdIN0SP
	 aHN7GMSoLhOl0vrsLBAYmOciVCDirFOTNKZ4Q+nkgSbww8oDuuF2Ka+TpdXoUurMkN
	 BoiDnZzxr0/+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60142ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336325335.24254.1576074545709459208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34df39182cff5f66b18f1a2ee83b01b59bc8c61e27bf8ef153a511cde8920010
Date: Fri, 16 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663363253
