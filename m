Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E571378
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79108C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671181287;
	bh=iItRDF01G1s6IUs8LS9NQHoE4BsZEoyCTiYVAu2mijE=;
	h=To:Subject:From:Date:From;
	b=m+96PQLgjOZlx1WzlP3pdJ7sc7YEBn15iQTQUm0HhEqZZUTBowYIWrnpiEJCF/A6V
	 uD3ggy1u2Fd8kdosWCvNa3pSRjYioRxoauym1x9tTSzttKVsmJ2wnVHsWABHkznAMm
	 Pw4q+vSgZX6ZfKOwkGHIXqIG2vVpGDhyWPvjGtgg51/aD5A7pxFnePrU/ETjqgZcEG
	 YbREwP48iHzxH/1feFWxLhYTgYix6vi0h62Gb4/TH8cK1m0tCO6w6U4Nl4xFpDa/VI
	 IoSmU3JdpPHv29Jy+Y72t0S4VNkpbnL92Ujfw0H6xxK0b/uDNo06HPIVoDqA1OIc2c
	 YzH8K5KWgkScg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D19DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167118128737.32154.7614516219582724190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08506cd5960c38251b16bacf84726f02aeb6cfbf7bdb4c1e4feb92242959723
Date: Fri, 16 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671181287
