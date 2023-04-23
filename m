Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5325929A8
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 16:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DD3C4339B
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 16:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682268665;
	bh=NkBmZYdgS4hYsJkvcb/bEeIbF+tyIIceYJ223Nj9fQM=;
	h=To:Subject:From:Date:From;
	b=U90Q2Jgo+nuRG1Kc4b30/+L+tCZy5Mw/8JfLkJTNf3zhcCYRwMBW/hip8N0GdFA7O
	 qA2ZPoEHw2c68hPD+DpSCq/5aLrZ4/cwALEAZc9CCc79ngZdFWmO/jJfqBR89bcwW7
	 Gx+Jyzun73dqNk6vvxE+xtAW8lI0BPyjZWgNloMDQYl1V5IjKz6vM5lXW2kb5BShtG
	 Rh11g3tKgKrNkdu5/S6v3atWMtXIR6cA4WTROV2k8fEDzd6tI51Hfbn9vRimsgRmQt
	 g/xEpoCRjzGKYtu0eiBK/qkuvKVrbQFLPJSrqdu3xxX3K26Bn1YdxofeoSMUCxxNwl
	 UDtZKbY81br6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB8E5C77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 16:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168226866582.2132.16921882027301248620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9185526328f8acbcbee6007346e0d7df5c6cd8d9d30dd5dbc3ac6be35985e1d7
Date: Sun, 23 Apr 2023 16:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682268665
