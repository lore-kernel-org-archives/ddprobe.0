Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF04372
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73101C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670460654;
	bh=/aNAQkNg7+YIqlzOrNPtQAXsEUPHNjJ8aSwww55YMP8=;
	h=To:Subject:From:Date:From;
	b=TnGAKE2d6ZS4BaSADDhNWSfHxWOWBs5oysDrCKtFCZpoebLDMDg6tAfJV2Yrv1olW
	 sh8fy8gU8arP24mszHwt1ryJMMiqIR2dTnEkv2zLCaf+rLNpgeICq8rFWRl86zAxhP
	 Aw4pXvbCBB8HRdtRYPOjTFkJihA2Jaje7hn/dvNh6mifNtx/N1uX38/74+cx8eiHV3
	 V0uF3C1UjPtKoBnNeLMGMS8GbcO4ZXHoPMwii4pMggAjE/BKaMQx3u8aJwmScMQ4s9
	 fnvh4jk5Ei3i6NQ0KTTaCxkLhURNiNvmBtOoVEZTyKC3IT0wHEIeBgmzoVK16qNqxE
	 FwyjsZoACXG0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A63EC4708D
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167046065434.13337.17174497317711561397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96f358bb8a9fdbbce5cb74e20c5cbbf19d13af1d5309a66102203b44cc860db
Date: Thu, 08 Dec 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670460654
