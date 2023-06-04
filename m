Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A21D1094C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 18:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8349C433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 18:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685902145;
	bh=IzLOUzJINuco85tknNDjNvCOgqxGdbbPnOmpR3fuYHs=;
	h=To:Subject:From:Date:From;
	b=GrbR0vJ7TEEK1SmQ1go/rsqMYv/nrvl5/5xA1L+2uqMbHqMogMLGe6ucW7n+54esK
	 GSqCsMI5gA6kpTXEvWaHlXMsaVj+1ZO0vArt5FQ8FyR8W9icKcz9+2Qsjfnt0Udcv9
	 GfRT3MXJI60FVXyQVYrDOKLMWJaHNc2hDpHytDeTAUuVlia5DiC+6Jt1qFcSjRPIUz
	 COas+16DkeHqUQCB7h9tivw5Ir9nXbl5wRB8BYXF7BixIZbEM6oMFW9LogHYALOrOg
	 JVBrT8BI6NbyfrixjljvX/JguVwGMpmqazB2mvrYWmxgf4Ts/u/1COTkq8PegUrKKB
	 gX3OZYMvZXuyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE338C7EE29
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 18:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168590214577.32748.8635457948324070254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde574b582ae72636417cec6cad3ba5a790e62a558cd9394b8ce60bb320bee68
Date: Sun, 04 Jun 2023 18:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685902145
