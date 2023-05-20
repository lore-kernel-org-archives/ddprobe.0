Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6076C3D39B
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 20:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0FFAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 20:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684616346;
	bh=vBj6pcGOX1tB5hjkx//vTkg3uS+D0yoTwy6G4+gO1uU=;
	h=To:Subject:From:Date:From;
	b=Mh422UG7NJAo87uVlM0fb3E1Q2NEhHqSCoCq/1UAKoTfg86cUs/h6jCYUgaT1Ht3e
	 WH8txXP58YxJRF9xcSq9bWYlYIEj5rA0C0tRukdYcAPS5z9BzfFICHO1U2I6ndMwk2
	 zrrZIa+tICS+gtqWRrHyHvJ/+Tq12LlXvTPHvgUM1qvLwFoi96kgnmvlkNLG/3qU5n
	 PV/2LePjamGhwoF88UAoEQGirCP+7xx0k/ZKbMOiMN1Jz/YQBqD6uizrFh2q3g803K
	 uGwEFIKoN7Vqt3PU7GH9NtAPuI2yd5ACLMUb6PvcbBYFTrmqMjIoBZyYfsa2qOLWyB
	 s9EqX2+nsRhcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D41C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 20:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168461634579.2411.17999412427711311098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add58282c89444878264a74892146f1cd03ab5b3f20dd2e7b5a07fcac06d48e6
Date: Sat, 20 May 2023 20:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684616345
