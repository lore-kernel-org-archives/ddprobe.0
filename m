Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067AA2747F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuHH99qZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A17CC433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699314496;
	bh=UijoQnk08o7+P/205+DBf18kBsnCFG00nX3Plgj8jWU=;
	h=To:Subject:From:Date:From;
	b=NuHH99qZ+qFfxFTkwKPn3bQNof0+AYIq7IB6gSvQKIyKaPgXPljwNVObpmA7a5Kdy
	 FIYlGXmkfMXvAm8SowfdbJyM7Kz96uYDYGD3JwmB/f6qwXa010WleMvmQpvZi6q9GX
	 R1Lh+vslaZcO2JL0zQSg14ijj9n/iaFhmo34ABiIOD/DSvahOV55BIYCxsAcgQ+unW
	 +wM4PC5o43pz9Qhw+btdY1wu+spfLt2F2BL5GGXnZr1C72vQQqAwgDMGSKyM4pmwZ9
	 IZmfNRHUuU7nq8SBLsoDWQarxzE/L4D9jpOCH6E5GTwtuznxYEyGVX0PrcNILoaCF0
	 GoL7T9MgcsgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E22C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169931449641.12794.1589253048277282942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d600b024f0b6821283aef3f0fdafd7c1df444041a71ffdac88719a263102e0ca
Date: Mon, 06 Nov 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699314496
