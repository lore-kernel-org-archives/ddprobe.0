Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75AB0361
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 01:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2296C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 01:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696036568;
	bh=NGFEZhYY+fGl9rncT5NSKZWqIMhSZR84vUIl2TOsdfE=;
	h=To:Subject:From:Date:From;
	b=uFQ2Marl8UxvQ/KhwOvy2fm4uRaUVojfRtSbya8l/aXhDXvm5+cKjs1k8wm3Zr8+F
	 0mOGMRfL3X4wRT/NO/xQgh3LSUHmv7ReKsN5rJgJTzSuVDzYW6ov2ju31Q2s34RGJU
	 jIoLVY/0YbPXPT0mtDPdaQvNupV6Jtz0ruZA4A/rpaFR1E2X+Yl88OhGc4fydsKm7D
	 dmkXccnXJXOYvt8mTqHXU+zKA7FQW6O0FYoLHHtN41dydH8+gTXJJzoeY2z4jipyu7
	 BARoqICPd0HPQNx/Hw0foEb8JeFTk88rNf5oYnfRdMyW8KoEbqbHd3OxcNZoXlvk4/
	 5ESnJpmtaxxkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB269E7734C
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 01:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169603656872.29083.604436676029198044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8d09cc6fc7e5e3548e6422805bc97430a48ef77a850b54f1fddde2210d869f
Date: Sat, 30 Sep 2023 01:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696036568
