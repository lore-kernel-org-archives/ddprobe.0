Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175F3290C
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtcTMcuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1AAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702210696;
	bh=9yqGjz6ud1CMcKVl2cwYVgGEKaBo/ZEXIKEg31mgC2w=;
	h=To:Subject:From:Date:From;
	b=OtcTMcuJwPvntDeVea55cz6A4cMX41o+xHjYN45hCZU2boQgwbUr1ww/tzJtQva6/
	 Q1dhr8egaZks3dkMoervin6YhuOwl7NigTBmCV6b1IoCWh7SHXPI2BSLastxfaoaVq
	 2m0jJIvQ5pmezPoy6lGv0pBKrRYpcNl/qPq+SOBgFatwK762QqH3emj0laOP6qd6ZP
	 vUVY5rPhz+brfnEjb8c2tPTl1tAMQPTZb8+RxZrM92VkK8KRlOypVeYQNGx39xzFfV
	 JpQjuOkXtCdOThLzBh5+vsQpKLtH+CpCWsVHI/8dTgyfRYACYcnz0/+XAIT/6WJNYG
	 vWzWafYTO5c8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608ABC4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170221069638.25601.2869222755548334733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a1dd443070a679e4eb8677d752fcd9b3f6a083fd990db1f54d8c224d579cfb
Date: Sun, 10 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702210696
