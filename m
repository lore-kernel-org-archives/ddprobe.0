Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92DC372
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709CCC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670460054;
	bh=IrGcoE0DDVgBaL/1XlVJj9DJD4oyqA+St2UT2k0VLlM=;
	h=To:Subject:From:Date:From;
	b=tu1+Du+Ff507asRcSmuDc9nApaFx16zRmRH+WeNTYU9rGWmJo+DctZ8MtTHTwp7EN
	 z/QNGamIO3RcsheWxHervZtMI+RVKKrKcOom3FiFQvLQYLSLkyg6keH45xJdVuYu13
	 oymwwNTPI5s2lKxvT1MV1uhWgYeXbiFLSOfl6ZmWxtYmvAQwQMAyopPfKjc1hvoYh4
	 t29YyT4H0U9GKA8jCbfGFnl5Q3JqFDhLp6wAnkzA+7mGKm8z11+62dxvatan5Pb9Te
	 gp7foEZaQACLeEVpTlBvzKfhNui6/wmyN7HUZZ6La8M01yMcKzrlAaBNA0JWRVV/m1
	 Ax/mnLYB7GhSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57110C4708E
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167046005434.20074.13015784162102887374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca35c6ada00a9c6e114316517f216c8799d421a97fddaf444603533ada266d17
Date: Thu, 08 Dec 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670460054
