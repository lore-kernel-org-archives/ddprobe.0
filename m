Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5F833CF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85140C433F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672607487;
	bh=zDdWOEoMl7Rj2bAvFxJN1yFf00GlYCStFvJ4EYrg5gE=;
	h=To:Subject:From:Date:From;
	b=eYiFiZq/Tw3Vq3l12hmZ8AGBTzcUUG7ibhWJ/pdY/yvXl1oSu2gEOcEO4ZuESRRu/
	 lLl9HavIgYd3gpos43k2mzoX2wH/Coa/7TVsZgnubpVPQAF4WG7IysZmhKJWl5X8El
	 n23DbSShDMZ/BpdU6L8h80FX0GZs72AaiY2ps9uGq8Vu9PjEufp2yvnFVoRL4nmzzh
	 TsmDH5AkpVUdQprURMEqMgk+p83LCRoJdFsxnftxvltaagrBNEJj8lKvz5k4DFpyww
	 VE8RZhzIOtDij2/ZAt6UZXl0mzQrFduT+/3YqYKCmphHNLBhNCz/ttM+YCs7+xC630
	 Gyz0MQOHhf3cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69169C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260748742.23287.5685331466488897325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b16f713710a5d519574bcdf0cbcabec8e1bd9e036a7d3f06c565323be891dc6
Date: Sun, 01 Jan 2023 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672607487
