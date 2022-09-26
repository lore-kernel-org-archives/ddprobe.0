Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B422728FA
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6733FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664197253;
	bh=xSwwmedqPRLHbfRq+QBcQOZp6bcFO3mOfRjHogPPWj4=;
	h=To:Subject:From:Date:From;
	b=OIFrfgnjAcUMEByjsj2pzu6XJegwNKrQ9rf/i7G3dF6ZtQ00oNEMBFpNvidaKbQV4
	 eQXh1duQ6H2oTRQPf3byY4TXJp7Rtvf28BN8M9pHFw2cOrbYtYj3dX6rvM+ZRXkePR
	 PTgxs9uXcm4+dJ5iNLr55/X8ChSurUSCaVNu/NWe/2/0UX4GT5T+oI+6+UV9LKtte9
	 l9dmIQcM4Y0ei/kyagcVtrYaa659rUxGp7og2hppO8acFjwJNqfv6k8uj0SkjsBWCw
	 FXcA1wGvPaSbQy4Appgsv/fNur2bu23gj0AU7Gnz1ASfQibO14ZhOS3v5Zchjw53a+
	 2nRqZuTCdAOpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA09C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166419725331.20716.16297407928972245823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df792a58fbc6caf18f9a8ab7fc8c5bd82b33f7e9747bd2566c5e7604251d28e8
Date: Mon, 26 Sep 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664197253
