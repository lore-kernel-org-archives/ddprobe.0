Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C8B7E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 06:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7DAC4339B
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 06:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677912425;
	bh=VJeJn1NJt0UKDH0nNnNYvxQWION7S2CClgd1xouyCBU=;
	h=To:Subject:From:Date:From;
	b=gFJJSAo6S3LYiGRjeocwKzWcXw6l/DKF7Ih5pUDdxa12SG3WH47458LdPvYi0kHgl
	 uT116wFGkeuyWkS26HjMDqaCPWcDsZ6dvbjXZnfQ2qHfbCMGlrlE9mCOrXeSGjChJJ
	 zcVrjbpCFMStyOFAThtDZEd8a+B6rJgOOCcpLVd049v1eldU3ZynW/LX58qJU4tezb
	 IS6mPTrKaFxp+gMelsKoCC2Xf4SbNBogmvSE0cL5nevaOObXN1s7LpFqd72k/t9hVY
	 0XZ/1ujcPrmlKpwlUl7OddEZ1x7t4FVUJ+nsLSfTIvYfC4aOTWklgx9mMFXauhhZyR
	 XDkfIgCrJp33g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3964C678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 06:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167791242579.32111.12789228162914696083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1034d55c13fdab11274ccc575b5fc4028442c7c48551bb557700b2ff9381f0c
Date: Sat, 04 Mar 2023 06:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677912425
