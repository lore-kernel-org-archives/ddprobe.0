Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC90E1229F
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EC2C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666989054;
	bh=uN7dpXenrr8HFv3gAt4FUbjpyGgNioVx4877dPPVoKI=;
	h=To:Subject:From:Date:From;
	b=ay4VIkuMscrHZLf07oqgsiZRxZrvOyemaJ8whUW8IhpoAEVpJWQYCn2cPRtdg+raJ
	 l2djAWG79ATTjt+Nly5L/OYz2WAODoc1GfCT/QrpShOD3MyiuRIx6L4sqQhKWkAJWc
	 OVS1Lzcbaj1Z7bH9Py3/6wZBpAfH/96VvtQXVcsUtvYXZYh1Wn7NKPpfuupo/44Yl6
	 zNaTMTyCzWvfKcfvoDD/tIjXuQgbnO7sc1Hyi7Dgo2k7LYiudN5ps+3bQG5mjnJanv
	 U0PxyOEWEOG9YzLk4dsLCb1coSt42gK83T/RRz3GKDAz6bd7AJJ9VH3e6ixiAgrAMy
	 6pqSfg/mPvKBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53998ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698905433.2005.15126768188886057089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fd688f01f44428fb11b16fee76ed1f4034b0c9c731cd7d33c30d8e80239808
Date: Fri, 28 Oct 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666989054
