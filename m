Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD28115BC
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811A6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671772887;
	bh=bq21Ha8VU1/Ii0sVPaRYEQQeMLloHh8vS3uvjuQJiNc=;
	h=To:Subject:From:Date:From;
	b=TS7w5sJCjGIM7wqzxrGTY1cLmbQdye4n8NEDsgiUly7ZiARLGpv1OZZLheJVbu2dF
	 dcOssSb7nNaRFhmWkRpTz8wSyFZhzeIsiwyCF1v6Jhoxq2keviBdyoGiI0vzs/w3R7
	 kIVDEVWJVkuLN2DcxZjAyrh10B1Z+HrVfW/Yvy9f4/Nd4hi8TFvb+c/KYIrarX+5Lt
	 PjKQhP2pDYwz0DGskkO0wKjKMPiC61x3u+XyhZEuNbz5dhPQIadMCjb11rHT1vy0GY
	 qClzCVCtx7/aOkZTOTjjrSS3U5JyY0Qi4HrmfFvOtN2kzCNl93Eg/FXXPsiyKIirgy
	 6lKp2h2JqZ/KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667FAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177288738.31122.13646555835800439841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0f5e2f743cc76e4d2185f053d8eb5a556a8ef8a77c0b3a426b74e9585a9bfd
Date: Fri, 23 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671772887
