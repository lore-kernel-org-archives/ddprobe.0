Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C722C635
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F16C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661918453;
	bh=o06sfE5yA4sB0vRm6ckE9jBno2MLciOfRG1pOujjSgE=;
	h=To:Subject:From:Date:From;
	b=hwomZ/38uFPv2lOaD3pXa7Id+knv3sQNRMZOwY24gKJ21v+/KfIQsOpPb/rFnWvGr
	 /0c6s0D6KOTOw6I9doIpX5K3dQ02I3u18xd/whbEkLciFXpHI4BFwd+zr5eUBaWjyB
	 b3pKiwu4shWR/Wtgi6Dy1m+BuejQ8hiwvlY2KydhuDMH4x5ol2VOiKqb267GwO6lz3
	 kP6v1zmCtgfUVGMVbtydwOP+/IWfx3ResLM0LMTVz/JaS2RNq6xR7+moQ9aN6zbBZS
	 UKVVbbNt8LlAe7U6Qayenwj/LSbqTnnujh3vPNq+N957cRQHwF83WeUbavsf8oxv7e
	 /6B53joVJ7j1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58125ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191845335.30922.3593199490018433783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac84572394c4ffc3c8ebaa2bb58307c49a70a7370d158c5ecbe06e109458033
Date: Wed, 31 Aug 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661918453
