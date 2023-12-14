Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B07879E1C
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uynANSIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D00C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702563496;
	bh=hVC3SIY1lItXqYQ4qznqMjzGUBKSTMOCXf6K1SG55no=;
	h=To:Subject:From:Date:From;
	b=uynANSIQXKet74QBUY5EsgiDw2UYuOSpc88mlRRjPnTA2bDaWnrywuHa3MUXzJaZM
	 3Z9fhROeTjGJtDh1VZMdASUSsJJ52/CTQc+VuMDDf3GFIkq5EpyzYVsMcPHa7nS6Cm
	 k2jag7BUwHBpnh8fxtVOa7eDoF2fjP9OVBh3ySgLLbW1PJFCNcM6nx2NW52MNjq2Dq
	 +y2HyhEvt/5mud8/pdj5WLENXNIAFXX8sjIdl66A6D94VoSlPHOjBMsc+8FbpWOuk6
	 QeVuD5gQxuXdrHZmBRn3PKlvlUIaInDtS4WjJwMU/QFQXvym4Kuc55XUobXtQFjq66
	 ebJIcVIjF6Lcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC8FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170256349637.28295.17497147089898127966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05949c585bba88dd6035bfb558d18765f2ea8f3632c2bedd79dac4e601d801aa
Date: Thu, 14 Dec 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702563496
