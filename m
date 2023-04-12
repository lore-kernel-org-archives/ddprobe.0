Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598B0A92E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 20:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EC81C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 20:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681332906;
	bh=BConhYCsOe+eDG7mVZcljBkVNulnqZrSi8Wdx4UtJEU=;
	h=To:Subject:From:Date:From;
	b=i0/tliytSSRTZhRWtEPi6iRkcTal1wSnmNAOMEbgUr3COLFaVMWoYcjYWEEr1A83h
	 ROEb6id/yOKocZ3sFLclomjzsdP21O05iLGU5tk8XQoZ8CfLm1N6s2dMZyj4WM+hU1
	 DKZ+krcOg2slKQ8SLCFLoazzKTtUdZBQ6JDp2OyicpQamViVY/R3lEguiCmyCBYUs9
	 IBwFbua4hhL3GR8UC+tUKYe5yOYb9UKD4v8b15UInPganq5U+r7/eTTT00nUBGXGEu
	 TNua+eiEgkK+TqYma/AS0ic9FiKrQj5sr5P8AWGwmMkuCNpD6qtAtaJJB2+Z6X7U21
	 eWiezZXeeA3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB85C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 20:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168133290581.747.15737184987390675654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49db2d5c98209d2f5e872b14992972260bcce30bea65ae4a455eba68a611ebb4
Date: Wed, 12 Apr 2023 20:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681332905
