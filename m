Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7293C3264C1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781423794; cv=none; b=p6Ui4O9h8UetaIY2ZQgvQ2Rl/2m7O+finxqitYQEiWXeb1ey80Fww5ioo84H3GFrbzsprfnBtZvqxrgeU2NBOU+AlF2Va1DHKPBA1l4ah1O+bYRC2cHxgbCb9q4s/q0sGctNtwa2bCGGHPqk8PaVQ1u4cL4+n4SGE4eApQhHE6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781423794; c=relaxed/simple;
	bh=3ZOH/OE0PCa1wDmgecmrPwQVIf9xYeJOIDMJFq7BORI=;
	h=To:Subject:From:Message-Id:Date; b=dm74kEf6cDitirFoHidB4MEiM4Rx9jKc+srbppUXWOoWnACjn8Oi6r8Z3ssRFhZAXbg+Q/hCvZGDViSlI0aiSAw5VdirP0xmRnO9ac410Aa8Rec3oi2VNQVSQwDMTpcVucXP+9q2M25251CVB7b0/n24lSbHnFUPwr3C4zWZEvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vo4x5Llg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vo4x5Llg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E577EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781423793;
	bh=3ZOH/OE0PCa1wDmgecmrPwQVIf9xYeJOIDMJFq7BORI=;
	h=To:Subject:From:Date:From;
	b=Vo4x5Llgpn94zqrLmbqbxZxStEj/EsmE2Bba21CeMsFjyCnEGkGvzGBK4UAUI4q7c
	 9lH9gT3LhecEcMxEb7w4BT0Ed1hJQHEfkZRdqnnSOZYC21Qi84gCjurLf0hnTAF0YM
	 3l5966GVVmnhL4GPUUBUYFDe10wF7w3PFGCd7qzZsvou1/2g6uq+cXFHsMU43gEAg3
	 4boPod8w2ewNeC4ZuSE4x33Xf1+0kEeCL7TM9cgwWGwGXpzkKoT7hCq0+7XkqD3GMw
	 bnoHYmJgLYkVxWUzadJPKhXs5IrWG97o4DU0H6xCEFRPlw1VOxZGP8WYiSw+xk4IHx
	 tQAgMiiXoCamw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0AACD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142379374.7543.5179263856766181375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc1c9b844569936f24bf0fa4fe40a68d173a4cf3449d700cd8636db4407ec62
Date: Sun, 14 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781423793
