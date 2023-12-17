Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F301D44C9B
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXwxyGag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A81EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702852696;
	bh=SwLBo0HDQ3Tc2il8dcndEHpWqv4zrAmtkXi75XqpD6c=;
	h=To:Subject:From:Date:From;
	b=XXwxyGagBlznLI2Iy5Y5TTn6dJ8Nh2GAuuUE6k2AUP8z9gkIsyMGlqiv85sjV97Fx
	 FhVWWklKDcoCRXK8ZXHe3ZizRb3IRON9eL+dpfaFTMFOyCzosRiiW4qVJVO8f1aaK1
	 ALM/tn04G8Eo3kZZwyRRxQIIhnp7HJ7jU7eOslSfyqdhGMDwhKXqZokkgTd9RYp4+X
	 bFTH4Df01dBolaha0I1OW8Q7QGcKxgoRkJQ/efotB0RW47M9LaKEbm+0YEKLwDa8C+
	 7Sfn4wWXLMEFOCSfHg9/rlYilNZFeF+uQOpOoVh0aCVSFOX6YpfVcKUAIwIGGPcq2t
	 +fWwr93cf03DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608BBC3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170285269636.31033.13101254847059427412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cd758506d9e7af1f3c0be0e2d60afd9930ef328e0ac2b25b5bd1b75be3dac9
Date: Sun, 17 Dec 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702852696
