Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62AD2CAB
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832FDC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669064454;
	bh=v8HP+1+cHT2QihgtcX917WoPjO1jYnLh3wCgxgEYcqY=;
	h=To:Subject:From:Date:From;
	b=uWYucHD+5+9yE5+xiM7KWoH+yyc4y/9AbKyKBHRwSQz5z/eTADb2KelfnW/rckLhg
	 M2qFts8WmZsBseA6NpuH3XKxVOuYqmTdaiwLOLegzcfMirQ+XBi1ymJ2VupezB6Y4q
	 152sPTDrEb7xp/gf22TBfHzjzkiRcionFz0kNrzAfXigkJaKEYw/zj1h46GxDqcMup
	 xwDrijNY80r/Iw62ZXepas0ylTRUIlFr+yT0Uc85RWddnEST1Rn/VckVJLSnm9yYw9
	 iP6eHG+yij0z4R/IRmMb6Svo8acAZr8PhbPORa/3kvjrFxDnwXJoIfk8XMM/2O6OBx
	 9vOQEJncZQROA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB3CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906445437.31148.12696351417296438063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2b8eae494e99ea91b21518f19275abdc25df215aa2b2777b99d2edac89db37
Date: Mon, 21 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669064454
