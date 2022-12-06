Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B8B17D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71FFDC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670293254;
	bh=VOlYXg1dLmX5IQ6TRO1L9fY1K8+UwRRvGFNGNZyKoUw=;
	h=To:Subject:From:Date:From;
	b=om0tok6T0LZNsgKgL+sBtOi6h+4pV5iCXZIQSGZOTXVUVOx8aLafPUSStXYtYxKN3
	 WaJesHPj5Maor6D8NrQDN/CL+ldLLr5lFg00WFflpyHlDoBuqBQRw0F6Jt/VOA+f8j
	 1ERWexwqFGP8g43fO7dT3uItY7HMZObJKKnrpvpxI9hHGgdMpGdDnzhLqhohgTzt8y
	 4Cx+c0agx3eU4SrPDoETPssszrbnKvaqmOcFAcv5jUtGZ1YulEL3BE1M/awy3nHbC7
	 wcpaHNtLQBvC53g7Cd0ILhFaIak2z0P+ZW7Ey3lNdOjdhEBpnjNJc20NC9F4EBA6AE
	 nTJtHTozsC6qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56806C47089
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167029325434.1968.17075099383186573053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240af07bf5becd67ca3b0970abdb2c130aae212f3da6874310f4b3d59e8a1d20
Date: Tue, 06 Dec 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670293254
