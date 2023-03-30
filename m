Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596F71857
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 04:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E84CDC433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 04:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680151145;
	bh=gfE+sGySFQ5Ir9atVchrwqAe0XFR4bde3uD+xs0C/hs=;
	h=To:Subject:From:Date:From;
	b=E/0VQZCbWFfTjl6T2KRk/EbiK40sDvZo5UJVbpdiLzeijINvTG6x6nTHvqg51cP1J
	 CBRZ/YFPodaqzf14cy6bm125KDbitD/WojUi/HiigBAD5USt6pQWmJFAMulHcq2PrT
	 C2wnQjb/lzkc5+wxSxq9aip5LSAT2FcNScBSJaRlNpd9pJC5fBehlsgTvJGSobHpda
	 QcuhJQh2xZJAiQQhhCer0o9QpNu0FnOQQNh4Y+DE0UZuEk2FIBJDSyNkN8q6lnpmFM
	 Z2MhYwhiolP6CYNDs4oA2vyBFFRpFnuV5dArmyI1VhTvz38SNPU/DVT34c2GDuql3O
	 aKUDdpM3BDPMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF008C74A5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 04:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168015114573.20037.7191132277768091079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1abd512e9fac0c229b593115254194acedd3f82ba29de09df54febd23997f5
Date: Thu, 30 Mar 2023 04:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680151145
