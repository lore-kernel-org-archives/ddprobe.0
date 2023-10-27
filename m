Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1141F168B2
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8Or9hSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86C17C433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698408496;
	bh=dc9cSFlxrA2PZPZ4v/MhsEM1t5mjeL7+1SOo85lCRrM=;
	h=To:Subject:From:Date:From;
	b=O8Or9hSX+4pDfNXiXDzd5BZJ9Kh3/uFiXin5uB3m0jFwbWY+6iOXOfbVnkERXcR0I
	 GOpILvcdSzaq+pdl/+W8jOXmHn8oCbiMUY4xtaIwab0sWxBJVJq998A/hYBSjnSj+k
	 1vSScFEmL3uzFn9Rp0phWwJ+YSt5rJq00Fyjjl78kEONtY3Br/fHMlWTd3CWOeDvm/
	 8YlmNwftS5nsGAEqIklXi1T3i0ozIGDmoLED7+ol02NzXgtnkAN1vbns6PetTFKa4k
	 pOP3D6c9q3L08BqIvVgFF6cMdKxRky/l52Jnn+I+rCfieBFAh2KizqoNbDvL+g1qx/
	 3+b98QI6xJ5pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67499C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169840849641.29056.14204616288858045858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7bbad35d1f86d91fc4af76c477b447a8b2104ca18fdc60313f91e4a81949d1
Date: Fri, 27 Oct 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698408496
