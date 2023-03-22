Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C7B2584
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 20:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57D9C4339B
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 20:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679518145;
	bh=2Mv++y5CmnWzHP3NupUnadK7dejoaM29U3KbKEMY+8w=;
	h=To:Subject:From:Date:From;
	b=Ns+Ix1FqjdBzLtEhaumF7zOHk3yWC4qtosAY/GGNI0DgyKvaGfywyc4tKPT3w3hmc
	 5aoTt6IErrLTjAEBd+Iht/qFpIYpwMIC8kqLKNQXTBZQ/BRE8cY5Qf/8iTqSWIV0Gg
	 KLSYFpBqQiCulRAEce6g6mkt/05paFafFmy6wp4CHjvSbGBkZ0aKsLshhlKqz0xNlo
	 rqcN7OJsNS7A4ptbs4wEtkTraj0ydDGqHMhLOAyjmbh5R+SoFRrP5s9pAXxlejtDKj
	 Z3NTiO/05Geo/MZenBkSN0snTkP/2j7V4aswDvrqK8LLIefjzyEgSPo0uim1uZ8Zfe
	 vY5hHpbB9JyWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC41C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 20:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167951814576.339.7309958424680358776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead602ff3338167f283286dc4c34c1b929108801182ab713f845063e557dbc47
Date: Wed, 22 Mar 2023 20:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679518145
