Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90126112
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75631C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665524453;
	bh=+tb7Iriu0Qi1pydsFSOMILibczT2A1SKyaAER2JebT4=;
	h=To:Subject:From:Date:From;
	b=kcD+R1ctQpi6M7N9HlIV9Ue3OZL4RAf0zBi/MXgNubYRn56gw2sdkzCU8qOR1vW9z
	 Uu9FYeZWu2R95F6BHizDkvOYdaoKgVulIJxYfASdJqI85dKvdT4N7+7CtKgjRf18Xl
	 XqjOln+bA2W4mWCKTeswk1pPo1obA2bYCY19XGfyfleTjK3+67vtXpbrQdQBBfrZUq
	 HFNekXJwgWfSnK6BjokR1U0QY/c52zSEIE/DBHX2hA7cpHCtXzrMGPqECgqF7tnepZ
	 sMNiVx150Uj9+tFVLJjMGLuSfdzY9wnzfJ2krCeHVqCfpa/HIjHJqdsEEFZfhTd0DJ
	 Ow2CHljokChaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56506C4332F
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166552445334.23519.5366970718958845547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af1ab062380a3f94232cba9ca97ab7bf70631f75e84bc1548b9f4d79593681f
Date: Tue, 11 Oct 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665524453
