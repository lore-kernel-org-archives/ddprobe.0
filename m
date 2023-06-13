Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB6D17FE6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 21:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16B1C433C8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 21:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686693428;
	bh=62ZJk0grbOG40a9ye6XrVAhl/72CXZo1vfF8zY9rLyQ=;
	h=To:Subject:From:Date:From;
	b=YMMg4h0cceeCHKSF1EhOyOCrHPDS62Uc90XoTP4FwxN75+hSA1uOR4oqmYNGS2Jpu
	 jjPBCdN1Voe53XjUS1KoV5r/WpUpCHyYLzQ5ZFA7eyNnoDSjMHyFB8adtMYwvUcr1e
	 8d1IXo/jIq2aEpuAD4887oecRIBGDWiAnCBcf2tIAa8QtZd2XfrB6YaJIkMYnOgrCx
	 BDTXrTQzFNq1e4vdrEKJ1A9548Ah3u6pvyACU00/NhVLAbWQGOhBsv9AJ4S0sGfQlK
	 gyQZCl9MzKi46+GImwJzelZk7M93yat2Ecw87u1zdfx0KQtHVosOwyEBt9mw8GwAKF
	 FSCs6IPAtOYFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B7AEB64D8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 21:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168669342866.1515.15837547944457371580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04085db5b90aa43f10bb371a32e4234391bb3bc610cc83f50f785a788b94ad2c
Date: Tue, 13 Jun 2023 21:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686693428
