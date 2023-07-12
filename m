Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C6E1FBD
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 04:08:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C7EC433C9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 04:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689134888;
	bh=MCE8bFNGn5E0kGaeQa0DLomH7y29BcBN60I32/IruLM=;
	h=To:Subject:From:Date:From;
	b=aVRoUq9JqMBIH+RYVfoP/Y/V6cgiOr9MbmmCWrG1ut6egm1O8/NapVVZr+Oz4+8jC
	 SOAFTFndNNeR0SwT1htYpeSbo9mGb/BpOVA2kZJrBahJAB83VRoWtgXFQNx5E8dwJI
	 wL0KcbIYlNjIKyOhHWETxPuO/rIvreY38aTx3h4VuTnHTAHN/fQPda44k980E0AT45
	 wbcIb6zy54fgV1XptTGyfxGD7+z4jgFFEsITB8I2cmpKqw0snTvrlYd6LY6QHEcJoJ
	 xU+PK3p4y3MBah//Gkyeiqk/dGnBg90AjLGRVvtut4j6cvHHc4ClEiE42MxvLXEXNl
	 ibmnKZ7mGpGCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5203EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 04:08:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168913488866.3634.10405808846967161998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58adaeebfc20a0ef6b736c5e433a9ebcbe67c95901762f60e7d2d0313e876bfb
Date: Wed, 12 Jul 2023 04:08:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689134888
