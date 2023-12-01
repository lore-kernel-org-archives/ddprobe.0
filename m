Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F7F387
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPFkTXoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4F3C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701391696;
	bh=xeKId/VDCjX2HuQPoxIKiXM888IgXAccSD5me51+KlE=;
	h=To:Subject:From:Date:From;
	b=rPFkTXoHnVuRVbZiKa8xjMuJRAsaNEJt0b1xFzx0toyVq+Bc33RWKcx7tHVoF5GlC
	 arImuG7YGtLN6WYLhq0jPlluQcnE74DlBuYkFNcpYdPiPeY8daT+MLllRIND/hr+sq
	 hkrTLelpMOHsgWNK1rYlXFyC2qtYrKOPMPLApWUry4lbiSzuw/8MlbJtAbp3VkTUxb
	 XhPp/GV/1uZgQjM1CDwgVeMKYKpFpKpfR02p/bTDysQy0SKHWGoDCCLVSDz6mN7oFL
	 +jBMuRnWUwvy7yqkc1zvUjLqjGR2RGu95C022Voo0YAIkhCNmij/0x3s9Q+iEy/pFK
	 ExYMVJkTU6sVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E75FC4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170139169638.12283.13743517874887952099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee51b7d28d1f39e0454970035638462bd223640004be6a90b5838c7a05db29e9
Date: Fri, 01 Dec 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701391696
