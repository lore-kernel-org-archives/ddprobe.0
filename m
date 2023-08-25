Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB652571
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 16:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3522C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692980048;
	bh=KdnQO1RgheNFM7ALc9HakWcGOVW8C/ejo24/4Efjs60=;
	h=To:Subject:From:Date:From;
	b=IDUe0enOUJHYMtR96eQ7ViVa3pHZNkD8YvO0x8jq/GpdaZuXgYXT2iGLc7ln3XqC1
	 D3vhUwgekbH0QEBljuH/+8q5jU9IWD7/x7iw1zhSPrIIQJupKHpRPMrIcARXxxrBQe
	 QaDgK/gyGKauSKHmq1UfcM840w6dvscPTjvFUsEQ4eYzAaIh6MMzrbztNntxVZY5PY
	 nlo/0UyQ2FCcqd+hovVgM93UglURxAZYYsxCry2PICCSrYunG2RMlltqOH8c2BC5R7
	 wc4eHa7BbZIZXbC67WLVc+dSH6MuGyaFiEoJUm/lgLbMtJvbUvCiEqnetUQ6U0Bb6W
	 hHg8+xQoTsGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67F3C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169298004867.25433.2991374021174498199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db7fc8b5897562dfa1b510f6c37909983eb34c5435fb88d76948c0a362e5c75
Date: Fri, 25 Aug 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692980048
