Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD0217F7
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 04:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72EDC4339B
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 04:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675744565;
	bh=zNOQhr/8J6Uee/IunOEmMdTmrWSfE33lHLq5hm6wlhk=;
	h=To:Subject:From:Date:From;
	b=NI/D6HkjwH0ABLrO4IBDkS4JNO1zAqTkrhE+MSEdj2Ri6vGuRu/56RmOWrF0CdZRn
	 i0us4aD237B0M6cvJ+/PJmvax5f6bc5SKbanOAzLAFL2jfZGvviokZWNaCPN5YwGlO
	 eg+3XkUWjPwL3jPIii4yZqJ7P0Fl98KokKk5CxnqhIv0X5zh0lAH2nFEC7tvuQ+7U7
	 +KkndIgLXHhMg6KWtxpeBOBYEHKRrtIMUp3GLtJPhZsSASVovlUWZcRU/4xwuqbXo6
	 w2F/5vH/95WYokGTO6lEqzI/8ioK96vMumD0gxPnQFlVh+EhwlsEALVsrgSf5mDge6
	 WNTSs5+/bbTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B911FC636CD
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 04:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167574456574.13975.5129782396835081367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe6471c8d0059943cabe8a7495eb167cbac830adc6da87b2a6d17b44eb30e1f
Date: Tue, 07 Feb 2023 04:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675744565
