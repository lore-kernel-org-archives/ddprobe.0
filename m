Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096B0612C
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IA8sv+rL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9CDC433C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699169896;
	bh=BxdZsh5CYt8tFLQkh8NWa7688w8VjxE8+7u7CBzun84=;
	h=To:Subject:From:Date:From;
	b=IA8sv+rLxWayEEj+8RzWv7IYXKOr2A93/eqPIEhzerzioLLVbUkeMctN3hMMr4mZ6
	 R4ZjyXRy9vPNq6K/ZYkrncUOyKR8lyEGUAdAHVtrcoSbhItqq/B8jBFWzh/M358Mjg
	 FiEMReUlWzvR9ZVa6p2wuBS92F9PKgmNCwcxRw+A9Zi8wnsOcmUJRbXixHVuvbAzRc
	 ri0SuvS9d1nT5Qa/okJ0jGNznXrguJh6oa0l1sDSEkk8991ktWofSQ99606diKshjq
	 X7Zrti2eYyUxZQ/AP+fTp7edoxLMu/KpKE+EbypeAVJfeGMMRzJ7oNNz+Iug4Fs+sg
	 cm1QDc+W6X9NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6364DC4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169916989636.23208.16418673464690305513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9591022c97a91fd71296912fe28712be65487a9e1d9107c21ed6564bc0bb4e93
Date: Sun, 05 Nov 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699169896
