Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B47310ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7491C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674616985;
	bh=Iv4lPL92UYZadAbvt5eZXKc+S1Fl5nDMiurAyYwhwiU=;
	h=To:Subject:From:Date:From;
	b=kp0qNx5sQ9BzPt+KGhEk5TzMiIFAHN9veLZO9VU2T7mEzcRIHG0j6lYoWX8tz4yHM
	 AcRW4p7QXebEZNFPXAJvYmNrcwBjoiLHdQGHr9gMCvNJ+Xm4G85ki0Cs7X4wWAd7sI
	 yljDtoqZnQ69kRALQE3YuAHrqowe1q6/L1u2bkL7oAZ0cibSeU9rWO9VD6xXc46gRb
	 CaFHCcIVeYsdXWU+tjLCPud4HJokatWf3wz4v/Djx6ucMwnWiuv0p/N1DMf/Wp9j5f
	 YF9tRGpSxW4WE27lmvxIZQtC45rWylL8DozPRMBlsl0hQ4KUsV7fnOG/V01e1px2I7
	 geFajBtFs36Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B867CC54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167461698574.24440.3855172036743331968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b49add34ec1cff951407c5b9384703fd5693b2cf6a707ca6427c5f29474d94
Date: Wed, 25 Jan 2023 03:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674616985
