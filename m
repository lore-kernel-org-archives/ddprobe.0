Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0336A632
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2720C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671328287;
	bh=+UyM2Htmlc+UUeI7w1hVBdu8fYVdzie++IPozPAYli4=;
	h=To:Subject:From:Date:From;
	b=pRGBCYcFnftaZkXfQAN84V+r5VolPPr0Gn0u0LlFzJzR1T0zb8MryG9fXVlqRhvzT
	 7wbo5ABc2kMqmrE9LKUHZe6SgCJmOW9QLDR6ykCtYobLbes+ZCo3vlv4JleZKpJhcv
	 2FR7qQrFaNTgQusDClg7RRNS2QGNVLUcm++4uZ1zzbWOdd+j7RICb3/4H2WUiXM16l
	 wAc03NXgeqVPDMjJv+TEy9CrWBg+lyS+s+zug+RwIqDtAUDJTOzO5s0NJg7R6DNqE+
	 748YjX9xBUd07u0Swqrgb9JO4lVnuoxno0KxklWpLQQYWEzXV0fe7/HyQE4AQ+qWN/
	 oNG/Bg/b3JLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F868C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132828749.22071.12641869600032968390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f486a83a7c05cba9943d3335b3625eb57d2355d68c51cea04fdb7b3e93c07d
Date: Sun, 18 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671328287
