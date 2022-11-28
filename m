Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B69A461
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BEEFC433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669662054;
	bh=kY1rgMX971RortFGjej2VQ6SwCK8+mLZw5nufuQ4Gw0=;
	h=To:Subject:From:Date:From;
	b=IluECpgoZUKiCfMZZcqfBE+VMb0OyCuTngtVSi6T4uI4cHA0rY1vuM82TI9sGrpe3
	 UFg0HvuUfyU1fgBj1jVkFjqPcevTty7seGYBlgEnDeW6B0PimujMazHT30b3gV91Oa
	 tIb1zHrMCF1+QRjs+Zr2PRl+gIjKwzpsDnUecZgIrEFCx++PUgG4CFME3hZBpOBnyH
	 u1PxLZ3UEU4zjFzh48RrZi6PndVAq3r6dkWtMTtPqJ6pNOUzKYJ14zh6voEcb/N7ZB
	 sRWuorSRepIuuSkZiTO84SSe3QRPNz7onJuUZt99r5gtvssRFLq9YXZD5GSyDyL7pB
	 cE25riUy/mnPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550E6C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966205433.2453.17443794161078242482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a64c1f335b707b1fdcb4105820e097dfa2376d1cccbd04f4fb7d9f1ba91483
Date: Mon, 28 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669662054
