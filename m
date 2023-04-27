Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564891363
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 01:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A265C4339B
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 01:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682559486;
	bh=bzjz49mn105HouTbxacr6Q3EvdUkv1sPKFT+OP0eKao=;
	h=To:Subject:From:Date:From;
	b=VA7PvFNkqcnV3otQJoWQ2R6t0zOzNgW7rYgOXUEDmR2e4vdwt7PZOb0N8BwHOKKDt
	 1L8yghsPmJjiE0FZsvfGLEs9XD8xNXPvhXAsyUVeVkFeXHTMtsHAGuSY9PTtTmRT4J
	 2Neepda5AsB+Ie4A/t7Vkk+hVGUeF1lfwVAqn44T2VVBPkqdnQ7lSaazOzT2ScvMYT
	 f2yB3tLH6/+p62DvSgsP02llcBjm+x3LRvCc+UklqUvwMN698zVcP0mtlwN+0KFt7u
	 KQMqWS0SrXx3hVFPHLuPj1poUE4B+wJt/40rU3LUAQrRGmSzZWs4xlMoUGjWFQ4fp0
	 JCrFiRHreAyrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAC95C7618E
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 01:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168255948586.31692.1980494920831774787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f752f1db92710e5762503a1ddb577c090df064a04309b45d1122d21ad5013836
Date: Thu, 27 Apr 2023 01:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682559485
