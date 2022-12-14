Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A427F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8500EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670984487;
	bh=j06R38w+E+flwZ7ei0mEHiBZ5lJcW3mgj/iAqkZ95U0=;
	h=To:Subject:From:Date:From;
	b=TW7Vceo24jsyfP1TiHpjgQt9r/ju3+I3JB6JO06C9aUobncltscTyAlm8hIk3Nu8q
	 8FgLeut4D3YRMFO1tZW0hgmLJi0VmegFQYhfBoNF6kwJfwfrAK34JSRuo4e8EsLtGh
	 oMQytqJu3eH5X4TKnI7w0P7kN04RHMSUvlVBCImfV2slU+Zi/JQi/9gJ1WhNLX+rQn
	 0qGflu7tw3x1olniVLI+Ax3uJt701yHzJ+I/Y6z/2y0glYG5tmGT0WSWjOKV1pbhoS
	 YzRjwuJJ4ZGHzTFx/Y+6xdbF/kis8Wsdzbyd/g+fbjH9oclsSMEhOoQglfEpFML5Qj
	 M0k9XY11FTu2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C85EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098448742.32170.6347106955949980624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa33e077bb188683df0e200ddfb21750ae8c56d29be97daced92c5e0d5ea15e
Date: Wed, 14 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670984487
