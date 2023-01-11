Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E6B17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D3DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673414487;
	bh=tZOWHGXupyoVvhospBVLe3wDu2hklba+pjUL8Nxtp5A=;
	h=To:Subject:From:Date:From;
	b=ljG76ddIQOel0OdPRC/f87i+DwoXXN+S0aD0Bq9PveBfmLHLdE0Ho+Jsz/f9iTLJb
	 QN5JpmqPHaWEwQ/rGhoRQ3cDYkMdFgJnGvgditcg7uHojRKI41ul1k2PZdbPBe8r/V
	 oX4fB2FhCRylsLuWFURWWQWN4gvfepeL+ADDgwJ7rSQuRvZJfyJZGo3tlTk2npimK8
	 x6EuddVA/8QVxy7/dEQKppQJU+Hr+fU9Z+up+WPF4WbK27FV1M2aCVzW2kMlYt5W/w
	 OTQTTQ5AU9YyHkpc2dPTrSQFZoUYWJgtZzQs1V2YglIzVJcHwc0RN+3PfouA5oeSVG
	 kAyJYKfH8qc7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D642C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167341448737.6901.10333895909646390000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbdf28575c336fc94b3c516056540a9541ea0089c371d749d1df0e0eb7aa75f
Date: Wed, 11 Jan 2023 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673414487
