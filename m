Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26DA18B07
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9653C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687365788;
	bh=xie0f1AQCcpdkWzrPiWmwrs+r+tt2Oidg6cQ0R+bbhQ=;
	h=To:Subject:From:Date:From;
	b=mSHz9Z71N/EIejc31XPcK70O+DKx41QZ+vG9XlDoBONyuwdE7y1drCppcLPmMz+zA
	 szVrvOUJmsXYVa68ToBzr4BLwQQ3sGlbVLDVz/EVqPTuC3CvARJcBE+NH5YSI5Rn2J
	 HosS3f8IYOANnCsW/J5Rz1iGciIVtgiL1yXwkXNjpKHA4QAd+bwZZBfqnleQzLqhyM
	 9bsmqXYvjdycg7lAJk8wKJtoGQqUAyFy2h1Gsk4Jm5nTjYJCnsdL+apzHHKFLiIUeP
	 WuSdzDi/bp8joczOcrEIFZqJcUURteSjTsSfi7rwV293FTFx7MsHkEYD/b9XyVNFJ2
	 iCvSd8sDenwcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0688EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168736578871.8719.18072670872739827467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894ebdde8a06f81971eb89749e1dadf5f11b3f903c9bae4020e38978e8e541d9
Date: Wed, 21 Jun 2023 16:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687365788
