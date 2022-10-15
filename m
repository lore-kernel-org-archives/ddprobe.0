Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F2136F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83399C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665823853;
	bh=RNfj5RYDi3KrBMQJ5c+vtYEzjIMM52ZZbnQGfIC1clg=;
	h=To:Subject:From:Date:From;
	b=exUWyWzkqSEaLENvyH0Z2b7lvislJ+8R5sw/yIgQCngdp/SdH9LbAkASkVm2M9b/H
	 43l045ZUy8CUQlP92oFCa5XjtnncU1foEO8dxtMixv4quku4hHGWBgjddeIZUZSLhR
	 wEDPOrXHcvggOZcg6xN8Goqgk4MAj56UQkTwSVWuGZq3fXeJwcanCAo5SKs9OLXqE/
	 /ih75gJYflyOK4pvT/dN3vu8gUQHbthk5yEvRjuD4C1FoPPUz4LXv0cTEdGlweVfRc
	 OY2tzNcU6wZF1w4rKqKc+XKi6FpssmHoZdpT1p/opedmFEzhBJcqWVe4A8/A0qtBI1
	 SORmNQJh7WZeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66583C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582385336.9957.16954775299706368921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f527336495cfb35fe17feaa355968d607799e9ad0c6162fea69821b8f33cf884
Date: Sat, 15 Oct 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665823853
