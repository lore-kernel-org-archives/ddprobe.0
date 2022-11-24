Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09B579EE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72426C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669327854;
	bh=PubfOop5cy9zwUKKPKPAQNEKQAk//X4xy37awq8nqco=;
	h=To:Subject:From:Date:From;
	b=KBreivui/cKtv7VOWuEpVXXYPQ9F3xDuIzHHxNCGX54BbHs6y732yaKJcC1GP5p1j
	 uVGw8el75QE8okOLYcMRquhUhSSFLx/s0QuPDpZrlk7nbvk/qunvCpCtxYYnPyhyGh
	 62V6XsLvEtKUwnmNQzfynLNkp1SSrBfbqhKXKyICmJdtzH4b3hnmN2vfEBaAYw9i4k
	 pRaNIM5ot67l14ne5juQLKa4iiRIvmyK54NUDiRrKDtoHDzw/L2VGaWze8+iawF70j
	 HW2f7qWKk7v42/HQ/f12K4qC30fInnUQza5J3BWwmgixsjJ1yuv5eZ5mORXN1wFLYh
	 d3bQJ7K8J7NFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554FAC43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166932785434.29836.3744165784357598246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af49745a26710294ca11a9a6fd2b5c4b4ef4e22d89601f94c5f5376730b6d158
Date: Thu, 24 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669327854
