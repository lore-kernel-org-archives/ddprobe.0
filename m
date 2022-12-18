Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D3C632
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A229BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671328887;
	bh=C95bcQstxkkaHMXkWXVi15YBFwIhCYsSLZYsSq8rfUY=;
	h=To:Subject:From:Date:From;
	b=Zqm2E6HuFrPlDqtQ1KpvBZd2JMQ63Ptdoo1JcgNIlx97NznxriR4ARkcyeZc+LLEO
	 cO/4RYICqOcu8AybpJbjFTOvOAkBygznmb4U7VRJ0n5936KjQTNQEgYHrnv6uFjoZJ
	 yqEk9KDY72eD62lW7c95AEhFqJIIaUEQm8LcMm5hHamwTEQ5VR6QVgsngbvW57jvsB
	 gwrYz23FkalR7pLt22kbrRrv3exZkADtmKp92knUfsmhXSIAOCzx105QbBic0n+aWA
	 WQcGokmwdqCWWhpMRFEdNSYv50keil0nWYYd6Gz9hLB2RggwlAYPFfiCFnvhAXrIt+
	 SyxA0gFXA+jYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78C8BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132888748.15271.1995422411283144547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55015732b52db95c31e433290c16e2a0e00840ba6cb2a5ef14a8d077f5dcc95b
Date: Sun, 18 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671328887
