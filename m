Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51E22563
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8444FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671702087;
	bh=ptDdrQJw/z2KwW36e9k/dTBupKFMUvYsxxZXTlDf6qU=;
	h=To:Subject:From:Date:From;
	b=aA7y+eYQ4euX0RmsjooETR+b0ej/Z0FmwtmNe1v/7Oco+9qeAGXbGaWR0auvW3h5D
	 It+FBR2treXiYBnxmcGT1Jkt0Ncw9nzuwSbfPcHB99qk1gKeuCpIKCyNkMjuybTtn8
	 1SPS46EYW0cXhA33f+3wLjkuiLuFlFBWhWBnMbsDo85ofkAzJXv3O2dVvP4AqufE9S
	 5Qy/4wAxm5tzJjXB1/G33yQ1jBGQe9dAX1GQXWlZPAmHYqjNWVUWYq32yplhLHkcB5
	 2YnFFWIsndwj4daJ4ozqp/a7kKlfYRl8LDrXSnAA19L0M6G0+dyKuu/zNgKotKyA3X
	 IwQwE4UQZ1f4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685D5C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167170208741.29601.905650527623433864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c405a4d1eff6a1df520f5719c45f6978c4f4168998967620fe8c473fb46991
Date: Thu, 22 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671702087
