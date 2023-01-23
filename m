Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350ACA21
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DEEC433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674459725;
	bh=1V+ZDJ4c+Pg1w6nWDMzDsHOQCRWTjUn7h30XbvIjn9M=;
	h=To:Subject:From:Date:From;
	b=bSEktmt3WAvEnytKEbGNK1BxcH3YHPz0Fdb+Gn3Irr8NBMw99X6Spv0ro1eUvH3O8
	 bljAiKfrp/uhfvOaWt2c5KtCtwydvnl7IAaq2p7laKiRqzyf3evSw6k6eZgqb+I6g4
	 lMiYLd2kMV6of5zeeu+n8EplPE1xEaCiFoVMG08jOi7Y8d2rYDfkRWlgGqlS/aSJxH
	 g+5wGXx7o5g2C0ZErj+iQmy6wViA6xxoz7jfu7jbmZSQ3xqTE2YmESGl/13h3GrJue
	 EgOy2n9NdNTyPLLdcAqmd5p9tfkEh9NkqR36li8+gMIR0u+jcCOgj2dZGgVnxhcp1g
	 +hbuQamTQU4EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6559C38142
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167445972574.31527.3813058528900360100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1a53d60f9c844a72650770223b0d9419b734cb7908790cba04db79788ce5b0
Date: Mon, 23 Jan 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674459725
