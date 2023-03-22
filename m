Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A22223D4
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC84C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679483945;
	bh=hO6UZjqPAvDh0MXno8PIep4o2DrHIj0Pz7m5FgAiGCU=;
	h=To:Subject:From:Date:From;
	b=cdMlU+mdOAUOVAI/N6rJHlAA2rVatVoPco2P79Np37g0IUDM1heZC8UFNhceRw1no
	 VE0p1DxRU0bxiguLRpaRrDopGf8kyURz3ZW7zf/xHt5bWAOXos+uk0Pi8DOsguv9Fr
	 OCUt2F1xFqCxLAksYglyIZnn0vFZmf6vmNA09z2aO4T2NyBKnhFADdMXYMLnOI5vJz
	 47uYXEcDwfIHkzf9NCBJOIiiduTy0dlhl65cgmZebrilfcSgAK0V4ptM+eQksARdRM
	 DsxmA6dtBgTlk5As1V4b3gfLouZ7u9sEfPoCWcbtr/izctm/mwipYiZDM91yn868SU
	 GwKXCnJJTIZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CA8C7619A
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167948394572.25950.10312877831372027855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2324cbeede3f1269d71aadfc7abecb604a6884e8cb026b46500e2818c48e8b9c
Date: Wed, 22 Mar 2023 11:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679483945
