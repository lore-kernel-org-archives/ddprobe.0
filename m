Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8261FA7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776F1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661412052;
	bh=VF3g0MdB3xMp2SjoUtpGycGlA3NuDeKW5FGS3H0KObs=;
	h=To:Subject:From:Date:From;
	b=IC2pXx0AN+OYJ+pwEGf4e3WlTTb6C6inSZmafz3cvtTkDQ8SLvInnp5btkKryEkey
	 WOdfsxfGjzs1jRW3L/YCQvRLr7JfIJ25nRDbPcBvVmM/aqJGJQhCswCxDvv2p3yjiy
	 HSIaqCFegiTEGLT5GdZ/vgFX9+lde1qtC3+B5f9onpfJQbqtY4wLXrHkhkxdpAfnfj
	 yCIdBzwSzIkeYX/MFdQ/ovTmiExYM6xnQIQMp5vIcLswU8DBomJ9U/TKSeGk3cV4Kp
	 4xMHF2w5QN/+BFpSoGx8Ho9q3Olh+xBmbwH8V2z64kcVbnjvYyQHUNaLiLYmFLPFrs
	 d9U3o8D4BwtUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C6B2C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141205237.3454.17327499930493654306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23edcf6c982fbc290ded7a5ef24e86b3cdfaa22b20d6b5bdf7b1227c75fea05c
Date: Thu, 25 Aug 2022 07:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661412052
