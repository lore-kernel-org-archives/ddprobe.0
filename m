Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E4B19900
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD37C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687366388;
	bh=IRAmhW0wDmNve94RGAdawTCPkervLnjY1qwRcZIdZAw=;
	h=To:Subject:From:Date:From;
	b=auaAnYnCv6z5pRNy/Ij/+gH2CgPRW5/9MPdxLtmQh/7VtRruUi5E0B6CRoMfHX/qX
	 fkNGGe9MO6Fc5kzcu77Qxgd3dNn4wALyb3x+ls/fi5Z1JqQ88ijinC5S6tAj/KV0c0
	 ISny+23a+fvdKRXgzkz/9yMr33WXCrOEjIzlnXeXgyrnyS2VaZlZXJ52d6p2uYVG3K
	 ngZaQKJCt+6kq/S9nceIfBUhab6ZD5okR3ivlGd6keoq9+A87l3LFMTeHAoIn46j2m
	 G3SQmxwRFTaXTMhJpN9KHYn5WkQwKRUd612zxRUZGU8mOgJfPzEeuKECBlP4rgJTUT
	 kDsOcCf9Jmb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA601EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 16:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168736638875.17701.18296717283033131368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd17ce4fd7a29aa36c80d9479893e5e6f37cdf1a00c2c249ae705a89b114552
Date: Wed, 21 Jun 2023 16:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687366388
