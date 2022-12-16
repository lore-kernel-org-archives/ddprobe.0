Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F7A8490
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA2CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671222087;
	bh=yiDdnpIVd2G2DlGUAWz57SU1LGGkwfut6OiY/uZcZjI=;
	h=To:Subject:From:Date:From;
	b=UvMeVIllNQ7V9nveRSSOJtDVk55anqgru1bdtKWpl27HSfeGUfJZg9I/0GesSPht/
	 W0wtRj+jBFtgG1y7HMYd15pAN7211tnxaIiQBeXtQzJoWlAN4hAAjesdout81FWu+8
	 li+L/upp7S41xb9XqjNGN13elViM61BnuQA5sFVNLxliVnf7AkxcINDMNBEMuGDwXA
	 tMRMOQiEVz2Ddpg98MzsDcVvECyZf1KpaBNH4cKQ28jO3GiGVOO7lSAxCcxl4exZMK
	 RUFM4Crec++F8asepJ37h+aSOEucnXi2BOnN6CvCkdv23CuucKiW5ILIzgn5QLnHNJ
	 QuTDyV8bM0ogw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93693C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122208755.16783.6220407091725001647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d683fe50a599c722a120af1b2c051dbba4324c759e30638af13d33a20536938
Date: Fri, 16 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671222087
