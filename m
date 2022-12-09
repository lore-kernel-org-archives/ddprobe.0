Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED2F7E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E2DC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670552487;
	bh=2e7xFXrhIpIapbhg968NR0KXQtjIAj3e9nUpBKTCa1w=;
	h=To:Subject:From:Date:From;
	b=sedPQCXAD1RMc5qleOlWFUMB9gk0kqb69nTEg34I5cTHsQ+rlskWIVU7SbTVEKOw3
	 X0qCH1PQEQDqA44X0ylOUrqks45pO0uCxTULior8gs1YLCNCEmIDCYlobj6SRp6+nD
	 T9+dQSFsGcxlJU7eoDzPMfxS5/QB2nYNFKM0fJ6vYBEJqZqaHJXu8zcyID4Ls9Gkj6
	 zXEHq9sfvY/8C4YrXy16AYhzHZFebjA3fE/lhK8cKNqHYcHG3PboTlT7xIxCcUskgm
	 1AiZvGI73qpYS9xL3WodRvCl6NC6SWCrT4weO1SfuStWz0wE3UfPTmtv5SpugWRpnz
	 +Nj+7JLqp+55Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D67C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055248740.6876.9307448741798563839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697648db8e9ccaf30e5d0c374b44a9857232197868a63495c6ba9fb6ec1ea344
Date: Fri, 09 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670552487
