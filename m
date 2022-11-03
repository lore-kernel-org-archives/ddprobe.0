Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AF2658
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75599C433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667471454;
	bh=XataF8RVQOZ+IydmThoR4FojMVBQPnJmgmINuS6Y9so=;
	h=To:Subject:From:Date:From;
	b=cfZDAn9FTIPUxMfe1k/TppczlvPGNDY37i8Z9u+TySnigJlTFxSGREBfVQbW5IbPG
	 YFHPF4tUfaB1jPxmyKXIIPu5XMecaBXpr6ni3o589G5ByIztWYDUR2XiWmY/RoT+fp
	 FeBtp1luI+6b78m2DYkldhfvCLy5Vde0A1/nBbtsa5TUqcasxqGMA9cy6eHx5AmgUo
	 td28e4igp2UHl93GtezwWsVvJQfbPqdGssncduTDKIPr4SHgy8+8ojk3LTiV9ndQip
	 6qTn9ME723pPGTY8KZxeqo8XNZkOUoQ1SBFEgPFZVoYdaXvrwGXD0PO7ehfTeIeMGu
	 wadbDGCKjA5yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55669C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166747145434.28991.9998860410286017410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1679b965076ba73dd0df314c6f2092084d5deb8a4d97199942190b7ab5396adf
Date: Thu, 03 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667471454
