Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E6615CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89521C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671733887;
	bh=cI4YbZI+gDa5yVzGO0QF8ziVNsp8a6IsKQuZ8xnCWk0=;
	h=To:Subject:From:Date:From;
	b=RJCzvBcncJ1lbuqeqEDl9daQFPcfFpbKpNXIAaHjIIFMNvBQUJeV3lmhE8JhhU/SN
	 nMHSqVFTUfPk2rHbD71o/9ymu5N4K4DheexQuv+Y0qLRsY8LEYKkkpphfnyxrBFmMK
	 uNVs6dqBEYOZe2J9cNAksLCmsLiz4JWxzslzc1FpMovNv758X48Et3FhYJ7BLlDZB5
	 7A8LkyNSCtWLywG77VAPx68ou4dKJ/SZx+zI7Az5omsM4YXRURcg5Dq6+BXion6Mup
	 JVH21O/26ySDvX3w0KYiZNiGG/2Q1JT3fRHVELhyl2JeZTlW/3PYKHPu12+Bub1WfC
	 uzhG1GpuzoL2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FBCDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173388744.26695.14491373240488881380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8772d24a7f4829664f78e050c402bc7a08ba55c65e56d8e7695cbf51fbcd9c
Date: Thu, 22 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671733887
