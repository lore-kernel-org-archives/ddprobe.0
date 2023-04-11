Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F30E53B7
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 09:42:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E16C433EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681206125;
	bh=O5jXtrpmfuhzkN6IZc7ni5jmI8Hdj/AmCHgzazbO424=;
	h=To:Subject:From:Date:From;
	b=RK/LTHSTNbcJpyHbLfLUYDGNMkQZXODzll+bHXFyCL277aIF+XSPeImHM0pRHberV
	 JOAxy0qnIbtr29QPX+PBVorxSHq6WpcLlhKAsPpD0bBMCuB5TahUPXTp+DertlDxLa
	 26Fe+20M5TwUWtTBKq1bbMWEP/lTyPSnu7MioDbglGRfHXNtMsf3Uq2STts1etXziV
	 U4zsUnnP3elrHOKb4GBpPzD0gDgbKFJDK7+hdZ8a/4yJx0Fzc7v4Pf8c7MNP4HqZtU
	 aowLhUO9R2822WRSMW97HErCORiprudE8b5GOUUh9WVa7H+Z2sn1eLLJb0glshjiGL
	 xy4WtFE1nIq8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2405C76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 09:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168120612572.19321.9813034958439901105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2764c1962ee63d06442ba1ee42cf814f9a6c2efed1ae0662c0058936adaee67
Date: Tue, 11 Apr 2023 09:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681206125
