Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B803208
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 871C4C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672699287;
	bh=wjCbuN98y6SH5OgAUPEImpo2BrpDqw5LElw1E9x29Bw=;
	h=To:Subject:From:Date:From;
	b=Wg/M/uAT7CieOqBf0fIGG5/Aic7pJYRCXJ0mo2SXcur9A5b5cdubZDj4so5fT6wAv
	 Of7pTRQ8cHGQQg9bodGJqK1ZYKan0D85bTyb49ZqSLB4l8F/RpSWOp9xvJxasvqNBj
	 NNfyFIdvlBe0CP2uaAdEztecLuZ6rfN6w+I4g4+4Vm9/lbUFQboYwKNG35ZTdBHLuK
	 HBFKqQXXUOfx6vIbGphyRuNGN8rfAOy3sg1Fm7uswrzibdXAC5wqvrb7sfaMAC+o6+
	 Z3cQ0nD6xM2hQ/pM31QB66D1WR+sfe9ao5B9rtDqEQEcnWjdoME9qFsMbNSaHGVPsd
	 Zei2Zv83eHjGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C11CC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269928740.3938.2001615665803424584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100e4f129429fcd57c8ac0827cf461f9d189e955b959b7163564322b62890e08
Date: Mon, 02 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672699287
