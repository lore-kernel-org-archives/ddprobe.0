Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B211E4C8C
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A202C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663276253;
	bh=I+TNLaEM68cYvWjCV2MnV2dOvlVjs7xujm4niufzLVA=;
	h=To:Subject:From:Date:From;
	b=RlxRArHVOsm8djx/I//JRJCKCLaAr3itbqk/GXmcXmJuR8fqWeFxjheSuq8TJkzhn
	 957aUTbArI76VYHUAIWhz6sVkvM0LfA3u3idbB6hSW+QJZ6pgPeYW+EjwkDa7Pbqpu
	 5rkAn9nlH0Vbpj6kqpHxW1wXcQ/Y8bj+Q1I3stVyth4aa5+Cgb5aIBTv5Be7zjAbpd
	 V1uZ72MMxdTHe1v+slEdKfvC/oHn2m6ICpz9gUMyVDOjRZCLS8urdfAZgb+H7QYMeT
	 XCutvrslXpIQC3aKi0ajWNL0B1c2LwhIb2HcYRDgL5PWxoFxAZVt+yd+0byz9H0WKB
	 /ZPk8bZP9dShw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FEEC32771
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327625333.9960.18060301181725624559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4590805ac59558721a7a7b19f1886f5385b4f3f19bdc1ffd2304d47b4788b0
Date: Thu, 15 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663276253
