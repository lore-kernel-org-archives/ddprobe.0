Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAC05678
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVY/yfGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B792C433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699673296;
	bh=oyy5Y20AfjLbWHKDtjwY01nIFmE9qL3dat+Xzo3XAv4=;
	h=To:Subject:From:Date:From;
	b=pVY/yfGsqT7c8wKL3wOnuEo/s0Zmygg1gDTSmVzxbh3d33+OZFLuPKg3SqHWxmt/J
	 3OQdqifC3QlKfk0+e+p8c6JTlNm4N2BbWyYaGWZz+M8E4K+yBzstpssilXJCq+G3mT
	 f/MuXD7R4D2BnU2hTXUhxIZOtIIiyWZMdLc9pVxCAPk22qfdpv+uRaRti+Y9ZIP1T+
	 haHpk/gzEMSBf3OczsSaMArHY2xg8pJP+nUsJ9RyUubhRbIR4ZoM4+brqp+o8oI8O6
	 Yz1amOYb450u5xxapMy2uJq2uHxaNEegggIXxoCjLL4aGxKqiioR3eJgCdAiSpb9r4
	 1p9ZOsNK6hxJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68981C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169967329640.26857.9095209835329334818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec87462da01da6ad93bb68a9daa0efb016eb87345d528e9ed37ba5415543f0f
Date: Sat, 11 Nov 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699673296
