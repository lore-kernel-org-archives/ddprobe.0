Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE783A23
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D03AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668237654;
	bh=2/mfb0Ql+HBiwK09yEWn9Y8ggB00rdL6Ty4mkuMX2aU=;
	h=To:Subject:From:Date:From;
	b=MgOZJ4sf0JizKNcdPdU15gntYxNcwwqLkP8NV5ZVH5P0zMNjoCZ9IcixljoCEJojh
	 UBNPC0D3IhoJm3cuMtJWoUonkNqDmbIHq73hVZxGb+UGLxCXvvbEZnZGRPq5F52oP/
	 Uy0Qvl+ZrZHxwzkJmV4rcC67hehbl/n1znJPruAXeCXb49J3llDXnTT6tvdUwMC7aS
	 a2dC3aH+JK/P7aFGQuRIhG2abutJDZ1gncnnsDOHj0QWRNBkB96MvJQpgojIFAYF5i
	 EpVGDQlpmoLAFXrIfLMzpJ0SGY4riyZ+lWGGUIKcTZznxBZzWQdqzbWryTcZNnSgiT
	 UZDus27xhOOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F8DC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166823765433.9744.10037252728841657492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ffdbe09869c05d76b9325583ab62cec2c7e2e1340e7a97068378f84070973e
Date: Sat, 12 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668237654
