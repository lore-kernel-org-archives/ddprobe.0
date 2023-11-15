Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE2B45972
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDyDajAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7C6C433C7
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700092096;
	bh=/pcE/Qtrv7KF8TtGqXfSwkPLnKQccWBNkoww50RyWoE=;
	h=To:Subject:From:Date:From;
	b=KDyDajAG7SxaiZ6rFzy50wkCSXtEDikdRnWtwzpe3s3mEGn3QNTwsuuY+MF8AWKlx
	 iWJZjhC5pOj4DFjG61yx6IVhx8OUkoqpnfyivQQs8bGXAFrzAqxoqmnqauE8QVfgOy
	 mwLOFOO/B9PY2amWRZH7OqHNGhMw7W7TJ0JP4zDzMpyDgRmR/El4F3zJYtGglY63+J
	 8b1u6oC/DdGkaUIvSJWNNwLcygMHnQHE+Hm9iV6X+C0mborrWmpC2sIBpFQDcnXv3l
	 UuPdZ7Zxcp991NK9Y8/IGULKVUCf8NiYvP8unJEJufd9EoGGVM20Ekyo56xIdoUisk
	 WipciGGSQCUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76037C2BB3F
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170009209643.21438.10048274894070968644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8379632e2abb833b66622e78e72404336290e3fe7384c0db96e33c92ba82421d
Date: Wed, 15 Nov 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700092096
