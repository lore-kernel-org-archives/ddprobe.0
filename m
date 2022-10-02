Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B164133CD
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDE1C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664713253;
	bh=yAC80NHVwKt7KBwwc0sgDQ3BJKC+yFjuJmJ+wAkl0zA=;
	h=To:Subject:From:Date:From;
	b=cfqBM2P+EYIISQSAQxN887vShuNo4IdUvzzMUqT9/rKsb5YAFfoe2C4rhNyb40/S4
	 4UQKqG8XWjQ8+QFt3pO1zGTjJ83errxGrW7wzPuJev7FAO5W39lXm6vWq5RUNNzF8j
	 QLHbj7vSyC7A/52a9ExPk+KrR6cERJlLiG2ETpRurHVIpsrIj/5KVMjG730XCg8z1a
	 KA8cy3GvVaAQRaZAPvdtNhZ1XwWps+DgOFzV96yiJY1QWp8NfTfK+6PF5OQ/HPmPaj
	 vWiim2Dvjj6VCfvjV0WaGf/d5QSS4951LSDJMSAMUHVND1VaRiLTNdwRZgm/3u/Omm
	 QfCG8m2vQoP0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551BAC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166471325332.4817.6691698637274527663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02940cea16eae2a5231e7c6178af0fa44777718f336adb47fc798c617a159878
Date: Sun, 02 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664713253
