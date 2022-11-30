Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B587B7E0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6995AC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669773054;
	bh=hMpmD7ByR97DSdhatHSZutg+z8eeI/1chLzjKYMI320=;
	h=To:Subject:From:Date:From;
	b=hRRkC1LG+Z4DXijU43JJ8CedXcg0WlmUTmsdaP1WY0CEQj1zbcqSIe/Cj07arU2QU
	 2mjjpVb8AC8OBDAR9rbLClC3Vmv2Lym1PDFPZMmlLCYL4Kbgxcg3KOegzeoPZ/Mot+
	 InicmPQlLlDJ7pitOBHe0x7TyUewLJwcZiw57Sj9zHsPeW4HuCsRoXnHr/TFZLKOsM
	 yJeHC5ze5Za/JwNihPBQ3UVekGLbP8qLL5zYaTCLKu3lkMRJ0jYs2Nph91JYVSpnv7
	 qtgolHK75qfWHy0cz6XK2Sib/CyJb3bfviyNRs5RwCqsKCE8geZdf/4eIgph0Jwj7R
	 cArmO8jRChybA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F922C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977305431.8038.6443494435849750077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff9f502ae2686f9afd96c992a98f9b0d2861de11ec5e973ac3d75bba6d2444e
Date: Wed, 30 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669773054
