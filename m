Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FEB33EA
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 15:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D302FC433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 15:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683042965;
	bh=KPWxz7eKwm238250YRfgvLbWQ+frAcmptjTlQ785UBs=;
	h=To:Subject:From:Date:From;
	b=mpt8hRBguaNEDvTt8SC/oZn45zKv4WFBeqxrodT46f5RYXLWT7sHD22fuua0eWfle
	 q2PLV2i+U0XKUau3EhiK+LrAItxZCubK+/SuoZLzQoynIrCLLfF4ImV4XCge1gudX8
	 ArimCNfkqIKY5npo1Q8CTaSr7UDDGGsJ8SjORCpe13BgNJvjqMItXgKx3WxWh8B7VM
	 kdk/L/udbUvfsnk4txyB4GkC6IEsbv7AkVhKMa2WTvLGrmuoG2Hh5ej4yOcOVHmUnw
	 kDy53rOY9mYkSP0N4Mvz87p6f6w30cCgkTaETB7fmIYJ0Bs/Z0VAXywCeo2bMoSqvb
	 UN/+bQebhLDEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA15C77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 15:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168304296575.23971.14009689909966225026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4931289673a3d1f5a8cb768ea03d5221101164d756d315ee99dc520676ac7ef
Date: Tue, 02 May 2023 15:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683042965
