Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C0E7B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B2E0C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673821287;
	bh=n7nmfdsc7spwPtUS9FW3TIETOZ1YZEeDVmdZEKwzcP0=;
	h=To:Subject:From:Date:From;
	b=glnQfvklZxwyTEZNol7PiGWYfbOQcZwzwfEgV0LfB3EWj3nijGY9d68Xj/EGXEh7d
	 K8ISBYKRSvQVa0oFSIpMDcMGGmGIRZJyTmZdKWKkljI508WHC2H9DFHi8LoEu28zoF
	 VjrT9BQCwsygvLeaCfUICMGHYW3xCzNEp1vCpKuy3YhRWMQ8N4hQxv+JMnHqqBw2Ao
	 3zuRXGqYgDUoO/DpC8PfsRdxNAT7BCukG4c75wv/U9JiFa3CNQHfv2KxdV5kBSF8T5
	 dV13doSFKfHuGwjBzeaSp+Q/Dm1BdnlebYBAwKUSih7KPNxo5lyAy6kXNZbTpp1g/R
	 lg0JJBRji77OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CEE3C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382128742.31501.8665501089227308628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d7cd58eadbf5424333347823ed02c7905fca8c31ac26963a66d125a89e7633
Date: Sun, 15 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673821287
