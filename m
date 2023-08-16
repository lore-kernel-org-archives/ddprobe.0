Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D71F9F7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 19:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F35C433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692213188;
	bh=nXnwf56ViXTa9e9zhWpwTTgWkHp6Ri6OHdUxio1iq2U=;
	h=To:Subject:From:Date:From;
	b=jiRuLJLUbOB+qTkES+37iPbKX2i4C9VbaAZpAWRF1372zZangPqUJoLpFs3MG+ul0
	 R3S0qmPhQoePbkmIqob2KezagCsyaT4kgRJP3DPLMmyZ5d9Mcf6VtWFoF/PGE82Hr3
	 EEqwwES02/FM5q1Gb1JfwsOdcZJJh2miPIhXeYXM/UI+NXzGzCUbS8fNdhunfcFWcM
	 ZaOc9QXZuCl6q0aCJCx91pLiZOLg9WDCPbfimo8hkQOZdWuzKHgc+540cY4WVJLwqk
	 E1xtjoI73itjg39MnpbxV8Fiz5eNBx9vQrJ7qi8X7QiVbPBCia/GYmt3Qx01Md7nky
	 xNH5YTDzeuAxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FEEC19F4F
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169221318868.21589.15193971693008021229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49862ad185a728ffa17bd196fe1b47f2f32ca2b2a4edbfb735065a733472fd9
Date: Wed, 16 Aug 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692213188
