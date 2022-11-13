Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7E1A2A
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79790C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668305454;
	bh=Q5VyYPC7oZUXJt+06M7N4ohgrEnajMbZpmVctLody9U=;
	h=To:Subject:From:Date:From;
	b=LF41s4BwktMgO7AvacfinxK6d74TC92l7cZAZjVBJmGBZqHwF9CW8P2+7XHELOkdZ
	 N8dCFtk9E4S+3rt0FxyDdakVerrQle4D2HHJ4HYI+RsHLMiAKKlnm61H3oCaBB5JaV
	 O3UBkepEkFQ7RW5qua4yIxbpS+EXvA2y/vQgGVtAZr82nTdpnV+2Q/Lr/MU3mr1lqc
	 /AyylKGNL1JVdhTi0sQRvhQgNMU1envOQi0f5O/TEhHaz7x3Jk8PJWKQbbsfsoPEXA
	 NZZOk2AhFQoNVlcEUH5jReTtX4MkFGnTOGqc77iSPuycmMpFA2BzIObn5xFrBSMQc8
	 W6KCiHlCjPMpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1EDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166830545434.21315.17559821671308974394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5531124b0a17beb06a263dcef4695f4a188af4be3cb7a6c02bb42eeb23382a1a
Date: Sun, 13 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668305454
