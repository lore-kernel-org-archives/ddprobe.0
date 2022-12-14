Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED8E17CB
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F97C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670995287;
	bh=pZKqZtYlcCfPSQxBnIKFKBq1GMkhlu1Q7AHhzVVtAFc=;
	h=To:Subject:From:Date:From;
	b=ue0uBnQXS6JBInh13QcXqKCZanA+pMlUK2+dMwN9f7LhWNZhXG7VePcTr6ulqELVh
	 7zMHFcrwiVTeHqW4gOIboKjsFP3jH9AGgo3zvxQUICjdZVUJl3uSPS0eWwNdw6BnIF
	 kZEwioqu3/OLGREoOqn8D5f7143TbT5XZvEczeygnx7+ZGIQ/K8S+s3vwHGKSB3for
	 fK+RTe/n3UlZx//Nw7MU8WNmecKitvpRuI6FKuasDOmSb2rOM4bY+I/K34VBajasoA
	 cmp5yoVHfrE83vsAljBpezb8cTObYl372yWUvxsFANrFEZgwO3QvdkDV93tPeLlZnR
	 3IXC3TDLiIzpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63990C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099528740.15001.10945831796065860482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e119a66d7351e4d8b713ff272d1188a8def436dec61ddda941bcfee4afd4b34
Date: Wed, 14 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670995287
