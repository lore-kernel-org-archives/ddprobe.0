Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D948474
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A00C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669413654;
	bh=aA+e+pUA3nF2zN95M2vvJyZgxq69GboWNI4nSGiTw64=;
	h=To:Subject:From:Date:From;
	b=f0z7EP/dTg4qvWN/qxfEJzI2OVzpKIlzZO9OrNK8ZdSuItIOE0NvXqL9fQUBwjDt1
	 r/W5NoFvg59iGMvZI5kyzvf/hrlKpRiQ5E36uhGfSPatzxEh+sCHBqCcl0besWrq/K
	 3zMDme8DGc7T3RZifw+AjXNRNVSAYUYTzSb/+kiJWvKzYCUvIMBmc/FpI9nScEdfjm
	 AxmHpS5Rju5YcKRFe18O2W+Vj9jbLAnziG0ZM4VbJEiOc2qsKHtS+gJ8eYRm1o/PF2
	 6N6zJusZqaLZ3y0ozO92VG5txrJEN4tarq85dTMkmHyGidUBcgfaRr6Lk0k6GDiu8h
	 P+gEaxJRoGDyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE35C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941365437.17248.13774196152034417741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51511ee78645011d7f435aee084cb797ea3f2409d2c97f4217aa0a3517f6687
Date: Fri, 25 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669413654
