Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA2E7E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F360C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670628687;
	bh=oLbIhitx/5IjGj57Lk6jpRf9LkfjeXFzcPfA/4w5rR4=;
	h=To:Subject:From:Date:From;
	b=h4NHfDwx9SrwBoEgKhBl/jaRtYeL9/T0XI+rplshSBqJk6+sJ+Z2PB4F2xVsuQQiZ
	 usOAm+E+Mv6qVdWTUlm1OO7atFn3JcIsgKKcLYm5l+tddMW9VPzMnoeju6bvDOqUSE
	 SJJCB65ZpKC1BmVb1483gUnZMfyOgvtjF09DkBKP70q2xdwAPfromX+Bzg8e3RtwZc
	 XF7j2h39SoP81qqIn4LwT1dDf3wNNHterlLrog8L+jCnM4ck8uu0kTMxWYJOVeWtll
	 CQbkunMkrIV7cr0wUM5yOVUnvgG1Q/amzV6lR6CBDQQTyF1ndJF92RB/KsP1CD539t
	 3CyQ3xdybQgOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663A6C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062868740.22722.9850872652875451612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f831c0f7a67677aa87033786ba14fb8e37a06672e30224074275e99bfda29f7d
Date: Fri, 09 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670628687
