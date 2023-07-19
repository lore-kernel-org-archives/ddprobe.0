Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63122275B5
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 19:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3750C433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 19:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689794528;
	bh=WO2yIfYbRXZDizmlk6FHGWTjl9s/PLZALefIphU41+s=;
	h=To:Subject:From:Date:From;
	b=cLqEvk93PXn/+6mHHEiHkh6UpeqT1LMrU7HCIxxISC9NOttR2jRMzOZfNFKlZfEhH
	 HurtjJNGRKiTrnwonwmG8vIe7mbhcOleAhOZ4BNN94rUU8K2yRDvkVg4ha1GMEmmRH
	 7Z/OCnCVG4T35bKmln+hYFHtl7QsZLPW3sWsqogUZ5qAbc7v4/W2JR4UV/p18jvMcT
	 JBFnucmxjl5eb2Zq7sVV+oisepPGWrkxqXV5y4yQ7RJlTyGEfDWgwg6m9sI7n1JzWX
	 8Wo9IwxQsDJSNYXucDy29m2Kdb8yvotTiHpLTQ8mogo+qcnbqGpwOvOEppFVOG+iGQ
	 MWozTHn4jwXrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9A7C001B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 19:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168979452874.30437.5562117519530026202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff376bcda0ecc6db26fc15b9dc0d2b3bc2c0e967f58ed0dc445b5cb580e841b7
Date: Wed, 19 Jul 2023 19:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689794528
