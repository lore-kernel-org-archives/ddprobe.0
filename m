Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AED2BBA41
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE96C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666999254;
	bh=mptoMDonTURF8OjKoofGUJCE6oZoR4+j3G70d50u2uw=;
	h=To:Subject:From:Date:From;
	b=Yh9s4qU9u/Yz+6gbabvqpDmYNfdnKCDq8cEEi6hRebvTQW2qkcyQDz2d2HUtYqXKi
	 XuivwoMyzspwqQ5va2fBR/OXGio7XcUkieCkCYTCq7lT9qpiGHhR05MARQ8j/B1i8G
	 sJ6dTOCtwxJFVlRwFlRqhXbkRh83zw2A2X/4bL8VqNurxlt88JyfMBf+s4k4Lt14fE
	 ThsoM3yWfuO8CoFM9W/aGpiir6kVUaBUGrXFEhqq0UrNqYMHV8ow6rJJLskXERTiE5
	 ofeO3AXIcE3LA3vnnvrhRiNGjq3nIxUXV6jmEVsuFw231kUrcwM0emLxBv32cw+pBJ
	 n42xaoZM8nJYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F236C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699925431.554.10512830306611277852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0945530ef7587638aec008f95ce91f2cb5d17f4bde0c6d65da1269bc1ebcf16
Date: Fri, 28 Oct 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666999254
