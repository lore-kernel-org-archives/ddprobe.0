Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BCB2F55
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E5F1C433F1
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672444287;
	bh=qWk9k96kmn2jOy7Is/U0Pu46OWvPsYcTQtnO4OfYIcg=;
	h=To:Subject:From:Date:From;
	b=WChiCHqdHfoWKh+MJBvdEFAWVZ/JwaHTuoPWNsci9OzhrsrWIFrida34cHD144T3h
	 hJ3X9bm6ycmShUqxcGTMNNJ+qiv8U3U0KB5Vx0aNKvDn7Owyjv5XcizngK/XLS88oo
	 cmNifrEScYxz0El7Ss+E//CEa5Vb1LjIO99MODoLWrGu+S+eaVfLvzq93DhP6FoTZh
	 gkMNOE7gtQMRJ9IErotRnprON8bQaZC7wkvjdxUle0fNLA6zbZxAjIEqjhJTVwdsAr
	 04mrzJbDtJoEwvzjHG/eejJHw34g8ahVHOZsqPP1gMipmKuKVeuxZgo/HlC6Hnzbuc
	 slgrC/oCc6VLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73779C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167244428746.13445.17061828285988679650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25980ba79615d7759bf1c2e8bf375eb84194741869344116844cdb30567fa6d
Date: Fri, 30 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672444287
