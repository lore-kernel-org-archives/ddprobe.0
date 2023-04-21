Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5CD366
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 10:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE35EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 10:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682073545;
	bh=jZq29pQ9SOF9+VxHYqCuU5uoyKgrSM1Nnf8d/8gaPhE=;
	h=To:Subject:From:Date:From;
	b=cC4jhuyRA0J6Dn76vdujgTppL3zq7PASXtPiNQsisQwQcXHyt1H+LdLRpxSDSTD3g
	 wB4gx8MAr721wi95mOx5gdJjJrJO9BgpUgHHTyZ89IGNcPCXgMIk51965pT2pVD6wo
	 YGJ/HOq4YfwsdXQ96nb9uMRYSuzmW7z/blRbLy/Q6h2MzM2xSRewj8+s2Eq+VdMjTB
	 TfFtwcI02w8oKfWMO0faDlKVwNiZgo02LXXMftv1Cj9SagUfmdUpXk9dtSm+VynfPG
	 W5w8hcv6pdZhHTw28r+/ntb8qnDg2RyGvWukU+/tV3LBJHX0WrlHIqauU+HxVR3n7j
	 +mfIJ1NUpUrkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE307C77B75
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 10:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168207354574.12727.12927816906445127625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f758ca3361cd15913d1ccdbdf7ec72784b01ca0e665ffa80907fea0fe3c11a8c
Date: Fri, 21 Apr 2023 10:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682073545
