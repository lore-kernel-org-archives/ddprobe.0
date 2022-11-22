Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00ACA491
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFF5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669136454;
	bh=RgdhSwu+c+Zy/DkmiuThVCGSD0FoqZy89w3wMg0kvro=;
	h=To:Subject:From:Date:From;
	b=JmGDKkgZG5+en2mp9iqFch+4iEOIW5sI1qwCcPt4cysW9uac775TDEM9aNqptMfK7
	 JTTYNaviT5gzMK0GLNTMEzxvp+OzmwBDtbGCv17vDwNoXjPLPSjtzFdfx/tV7tqpe+
	 WfLxdqONfNsDvegXkweriFM55pDEsBthBJnTCRZWXaPwr54DBhWQYPhFqyclXM9Jks
	 oXyIY8axYHkLEPBgCZRqrQfkQugwR/wqJzeweQmwuCL/cYxgqrz2OwiZ+Cq3mGgjcr
	 /E8hXEEzvBsACEwgCW2g+2F4MgtE4AYC8gQFM+qHe8gjcjT88Ju6gI4cLMu1k1i50t
	 kP7dQp2p4TkSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DCBC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166913645440.8039.6115370057072591267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740a93eaed2b323ecdaf8511704f43b7a37443ab80f1da5e4bf572c409a917ce
Date: Tue, 22 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669136454
