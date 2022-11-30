Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B546E79DB
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71584C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669838454;
	bh=5w0QvxFQIlOSIH2BwDWASeL8XSu5xp+EpAA5eIX3WxE=;
	h=To:Subject:From:Date:From;
	b=EwfJ+ZH/aRh2iRR5E8rSqi1nLQEhxu2UeJtNKYSw5pXvmy7Sgc5WL2cNrvbv4mWbU
	 eRaH7NLR4ZKbZMsa0AYRTriS4JjhSbMh4zgfaVihxpxS3iCFPomMMAO+/5AifKPrsX
	 q5IzOXUxjaFBEabTKSW1SyQmABeFI5LXLkdASZ31Yy9AdirZjGGAAprehsRQeXGarz
	 fBVAGoQZovoSAhHy4BAbgGYEchU7WO1RFfJfL6Rz1DJr+w8XYLMY+AghQmr235V1mH
	 75AuhphSQ6N0gKvSLacQSBQGJ7Tl8rnHQX4Ykbk6dj2CAjuOjNYQe7gzNlhdr4X+7l
	 2+qSoizHscL2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5937FC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983845435.1226.7530528639111214548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6909cae28b86725eed30af968f39edd76b3ea558d33f32c02a42088c62910d51
Date: Wed, 30 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669838454
