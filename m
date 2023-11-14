Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF49813ACD
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+zS7wFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84C7DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699949296;
	bh=uw/Hw+83BmsMnoJA69OdrOgeYhewRG30jrkLNezpSfQ=;
	h=To:Subject:From:Date:From;
	b=J+zS7wFGUZFG4kPI76NatqdyIsEAuk7gfy1FV8bLjJtxTNpVNhQ4kWAr0QYuGh/uR
	 CzipgdIXrWgVDVLAoitiPmSVBQJkFM4UXhOOtC0at0/E6hWHNkrI5z+fHQdrkXA9ix
	 96BGCIAxxtGmolCLjqaZzzidxVDaObobF9TRt2dbRYHMdZMDELd9G3NM5cprlDpLWB
	 m3c5IZpGPbyyaHL/KSTgOVpTLwa4d4xN88jlIAZkXRK0/wGQb0HgxTif6Ejl63QjJM
	 BkwSxH37uUOYcOV2khbTRzsuYVBzD0m4M1Lq9kFsA/2jp3E/A7AthQGKCDA6Ovbg3C
	 MM7vGcFhMr4OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6448CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169994929640.15518.6302806557554352179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67ca91ebc4a2694db81fe99453835b058b904a3090836f9d4064ae0eda201ee
Date: Tue, 14 Nov 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699949296
