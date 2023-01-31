Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEBFAD29
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 23:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9822C433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 23:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675209245;
	bh=8kVFItOQUTOPLEd8WKwq7Jit2pxk/PtCFmfCBe3FNzk=;
	h=To:Subject:From:Date:From;
	b=dtTsgBL4RViFmvLy3hJgDVCFQQsHR80cRcW4OumQT+tKAz8rGLXwy260NB1we5Clk
	 dNtLOTCknduAYenDYcSaKbCOcrUujS6jS2lR7OkHaITuNZSuV3iIiRmGI9tleVGl2l
	 SsFrboOENIRPltC0CZNJVbNMHywLNvYW0NXeiWiKVj2zLNem99JkFBLS5AC8TcJf1C
	 MdAiYvCpO3mU6N0KKX2fDqxB0mADLGMoR/k2Qi2PgO08r2QVWkHfoCZuqpMvQmXKqc
	 wmhAxK3MiiJXQ9+ZrxQNb+Dsp0B9eYNxnDFxWde2Dq/D2arAF0z0CswCe5tkI2fhkx
	 2cxprq7gCy5rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5CCC636CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 23:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167520924575.13337.2946861167517980212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752cec1d60cfd429dd48d673b5d04100947501cf81bc2bfbe655e724c271f817
Date: Tue, 31 Jan 2023 23:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675209245
