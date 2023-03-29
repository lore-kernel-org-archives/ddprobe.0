Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4274D5382
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 17:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01A7C433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 17:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680110225;
	bh=drz60IxuaOFO7BbR4QYWTjpx/TT/pMcGaoaWKcCOUtY=;
	h=To:Subject:From:Date:From;
	b=uV8hcw5I97HIxjdoVb7qAzoLR4lZ7AoOHGbAjgU52LaavU20iUJc/jm/eVrqoJcwM
	 C6NKI9npI5oK/g2zs18TmWjDfrDcUvl6EEcfITfnsl13I+NsDjV4JAvGPEISFob3rd
	 tsnEctB+l4dqycih9NpTiRTi2HsF0+FEaoQb1Q+o7iZoe+VaWyWBz8F22Aehwfw0Qq
	 S2ap4j9XK1qjsu1x57PmpH2hqqDmveFRwT6VYGEL5b6VBuL3MyloLL753shViwWPMz
	 +hkJIa4RGmLmVhyVUmQ6rmtX8YL1fPGYDBVhd6CN2+6AQWtgrwpGipRvPrzIrS//rQ
	 lLprf9j+1thFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0C3C74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 17:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168011022577.25720.15157901131274159626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56cd0680a73807a6a2eaf7549aba807c98227c1df4d28e7aa6360d7e3e98d87
Date: Wed, 29 Mar 2023 17:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680110225
