Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC29720FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 866F5C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673434887;
	bh=T4V7N1FvqAdssTlxy8pAqS4+YVjQKBlS1yhUWNX+GDM=;
	h=To:Subject:From:Date:From;
	b=PQ7e6gHqSA4kjErTZD4LDWVoI4hzri6LBTKj0/NMCmDKPDlfBJcr7+BMF5Msm+YcU
	 4ZTL29plIveIQSVGMaHUjgddJ9QypQqsl1vs0eQEMA+72vXHr6WKrhtXEkG28zeNb+
	 Cn85UBjew+uHoyN2GlgnLWju9GwwRgkvrK7MM4yOir90fOjruCBzgxtELBS4WtmRdR
	 8jkxP9GgePffg6VAvfTu1XTJGcAFoybU8VJXstQu84mvCSYaS15tJ1jZiAoiOT3izs
	 /rsG6pJhqpFFuKz0DxkDB9qhUQ3P9HuRMi1aRR7v6FGX6OH67j9iq7GUstqn56c+IT
	 T6Bwfdoypp0rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BB73C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167343488741.30814.3698483608088160192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f5a8955ccf6aa1bf8a1741a426dc2dcde17603315b47a2c9fe4d4741261420
Date: Wed, 11 Jan 2023 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673434887
