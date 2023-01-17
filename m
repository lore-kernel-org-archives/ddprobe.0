Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0344D53F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF68C433F2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673986887;
	bh=6YKQk5SA4NmOpH4cobF/bLD3yAz5mjVe3wow/2Ma5+o=;
	h=To:Subject:From:Date:From;
	b=cZCc8GOj1uSG9l1HjkNEVh2NiT2aVe2w00G5bZQsYj6PVRdr3PtKYNHpf3Be4SedE
	 VfrOq2WwM4dFGHR1/Gn+kEHGPl+vBwAzS//vRe0phW8p5U7lXRH762zfiEgFoIDv9i
	 4s2CUtprzFVUV6Ml1G7K6PI7s+iuFg6A5zYyPymoNslo+phjYuu1yhJ4HxfsrcP1GC
	 LxaXwmmZ4bKD+dxksf7Anh5DtCAsUyDfX9hDFEEsUJ0F6qYzWtOooqp2StngQKIHXI
	 phJabTKnMVbOw+qhm0Dp+FiDDAqLFBXTZWdGcAjMxH4d+6KKC4SQn7AU2DrKYCwT6u
	 TgdcXbcaCE+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74177C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167398688744.2273.13942334950365047109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d49d509208606f7b36898603d1b526e5ad102878d562ac4c7932126d79084c
Date: Tue, 17 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673986887
