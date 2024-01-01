Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3EF7F9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJOgvWWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 901D7C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704075496;
	bh=0KcgvXisd1t/fGWkdnOj5X894Q48EbP/1qJW0ZAp9lI=;
	h=To:Subject:From:Date:From;
	b=NJOgvWWomsowTboXzKex7n2n/tF2njrv7zVV45hlqRp0+bPmGQa1Xve0xaJoZqm9b
	 m+Z6FvxMWzXhLJ0XrartEooXr2kVXMlo1AQKIMxg7TzYqz+TiVzW2SEGjThRmbH6IV
	 GAKPY5E6cb/5Wsax0YelaMnsD6qFUVwIyeqBdbraghxD10vJJkP1e5uTLIDoRaVYcl
	 mmPMTNEYKeGonZWYYYWoImAjsxmRynvMRiB8yAVZMJIGp6TNUyviDRbsl5byy4EteP
	 UkIJ4FMuhAW4nRC9ztSDrkYfxNNMdMXcNV4R9MqZtLPSD7Go/FJms/845dlOmbYdku
	 KncjUok29nw3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74688C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170407549646.7544.7190998878949108514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17017f517dc1368ed2df909d3cb9dd88f5a63b1f11ba27b18c0f5e1f3c1e391a
Date: Mon, 01 Jan 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704075496
