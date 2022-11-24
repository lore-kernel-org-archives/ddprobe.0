Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAF41FB6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82595C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669274454;
	bh=mx387fJrDBEsqE35wwrYyTve7ULll0aAbENyU6CLPSU=;
	h=To:Subject:From:Date:From;
	b=ml6uGO1EheIgyFc11GxvM04gYyC1qm7grhc/bxCiF6fdm4y7Xgd1B2NNPqajFTdOm
	 il1Mzl+7ocBLc/rVqTJCtmKfAHnL2nJ8mj9JYG191F+Zua5wLfdEJhvLK1jwNA9bwn
	 9jS41x2pTi55B7V1DMq894WlRDIXPEAVuQMYXXcD6lsOdU+P1kPrn5QS/l4mehdolM
	 yQJ6sNrV7KZevYPDgVuLVs4ZSbdm6UOIjnro7xZ1qo41JutqiMFmxK/Krl2WLmT8Me
	 UZHP+g1QErTIsL5XCX+ktmBm/LbnYrAgRZSuNn67AoFCaLwjQEbHTmcoXJ07lZUHSd
	 Lk8L4iyaAtmHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6551DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927445440.15471.978633966954970541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba73fbef5387a409087e2b0e06f19e35c3d8cef4d8037bea1042ac60ea481fa0
Date: Thu, 24 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669274454
