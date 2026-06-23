Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B813A9629
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782192994; cv=none; b=T04HH7SVCfzMHfB6tfkjHhjCapyFTVqrLWok9I5/aStx919bKuwYjL+4ULpf6ERz/tkao02P3CDhRag0WEObWnnzJdhUGDrElKfMMaHdEVeUWZfMQdV1HUX/FvyCtx9/T0KKY+SsWiRa92Mrxy/dgXl2O+HS/21LtGGSKeM1hXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782192994; c=relaxed/simple;
	bh=4W+TbVUjEb/HhSXoBelSsmqpMPHiMN3AazcfVGvfV5g=;
	h=To:Subject:From:Message-Id:Date; b=PFHw3gl6l3MwSY5ZO1s8mJU0rjnflsuQ9f6j0TD6RBqcGzj3iLil0dQlkVzR4noWqt6C47kfrxo5zlmvZ1D8se7pEDREepcddmBKz6w+Rv/mF34MoNU2ZjKOlPMaTkuZU/jRF6j8Ay7CiT3QGYiQrYhRFiEMr0wbMIw1XGm8JAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3WOQq/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3WOQq/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7872C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782192993;
	bh=4W+TbVUjEb/HhSXoBelSsmqpMPHiMN3AazcfVGvfV5g=;
	h=To:Subject:From:Date:From;
	b=Z3WOQq/PGO02CDgain0/YUoECBDxmTKiQ/fAgCcM+cmZ08G8SMWGyswvAbBft6tsD
	 HXveHtfGrP1x2uBZCKfllfGqXnVMyq1Y4YOE4Vfl4SmymknLS9YIfM9w18lU1js/ru
	 Ic0ZjBPzjm6CxVeoBcDeD8KmLnJTfyMsRHJ7LSV7eo6tXb6XcLU6s5hnumbYu5WKZA
	 dOqH3A7Ro7gHlaMWpHWQRSMFINfgpvzC8WvakDHO3jz/nnNfXS4ZeaXSe7vCz/W1JR
	 J2j8hNnLYse/YVS2IWcICYCIaXXZcaejPUoRIYA8n2SQrR4yZ7bxb2Xhq544pkbQW6
	 TbZcppBEJqpng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE423CD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219299368.29863.3790529572309825603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5009b867fe2d94cece854bc5d9d80160eab7b3699dd9d66a4cc982d2bb2ebf9
Date: Tue, 23 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782192993
