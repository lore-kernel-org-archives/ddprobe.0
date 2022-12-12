Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A731FAB
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A270C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670824887;
	bh=hWa90DP+KIUj513MfPrlsg/e98qYlDtfR6hIgnUG9u0=;
	h=To:Subject:From:Date:From;
	b=dAmxu0C33B+BNNXqEguFwNGZv22J3TmerhllLXBJhuL9BQA2BZY8xzrVCVfUY8ain
	 A8IvvySDlXvkAc+7fXAa0q2rScAUu+GTzEufu82aaSjyGyk6UJNJatoAlpS2dlpvNk
	 9xyp6SdnEbALcoEWs5Ma8abVzRmFjSQOkyBuaugbEnn8Tm7mTqTw0xmEP6Xpygjr1g
	 sleaf4FuzoETt/dfXLGmfNPxEgC8aCpu6kwbbkxyWxIqcFqMZBW9dyRASZAPJMofY2
	 OtGemvDHtUCTF+UE8xxRrRMW1HAV+GnFs1CJ00jZTjXcqZGafhkWB2vqdqlCXAJzTg
	 Ksh47lE7olrHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6035BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082488738.17455.15815430706062125297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4343cfdf910b98e4e68fa61aa45b21391bcf8bcc7cdcbcb9edcee55f23ca99b2
Date: Mon, 12 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670824887
