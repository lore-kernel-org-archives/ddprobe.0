Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C8E179
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B4CDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669507854;
	bh=M12lKYDSjzAApWFimgwFd+ZKiYe0JxeRKK5UGUDjE/g=;
	h=To:Subject:From:Date:From;
	b=tAhnB+yEjSPeBZvQOVaM3hQvY5VLdHAIvlVkbOD3+cjjbeMvbg9S/3bVyXX74Uar4
	 x02LOidESBqwfMEX5wmRKRB3PW7wx4J4CAInVl376J+hx/s/m1Bq/emOCzvLlxqPvl
	 m2R4m8TPDzcaT61/ROcjlpXiZLD84LP3BiPXFC8mIjUjsRF1aLOMcvu0ihJe/nxRxk
	 Gn3tU+95TAhhx4sT9s2PSLl6VfiICIVXiUVb3WEhmNYWaBvqc4VhcZP3DwFUO5upRU
	 ZP8Y7JmoyOlYBiYc2Hf3PVABdw78PBAuToFyHkSV3LmRyPFzOJII8Kp7KjO8S/TFTI
	 5B3Vp8qmwp3Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E06C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950785435.9536.3725072485372473923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4309bfde5629213ff91163e17a125086cc4fb4adbd28a36d00493154dfba4ca
Date: Sun, 27 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669507854
