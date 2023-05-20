Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544076ABA
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 18:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDC93C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 18:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684607346;
	bh=pdMHeun5kzk4ZN0RVjxPhQf08rjeXLHxPf+FF1hC0nE=;
	h=To:Subject:From:Date:From;
	b=Mwq7RkPu6qeA5YMFTbyyTs5O32pb+uzlhxa7euhGitcVUdyx62DLCSvA8TB2SnmbL
	 vgZ6VnCQ4Cm0qn9LPH+fZrRUWB9kKncGmZkXBMTn0SS6brQtFyKUIP188Q9F3TfcRS
	 bypvqTFjfoeB3cPZLAijkSaHpMvuBfkoCn2RfR3Hjmmn5NLX1V8C2WjtA9Llg8gi4N
	 S+O57msGVXqdf1NQs8GkZZVA4JOMaL2J/YmPeUM6BeGso0LFKdY40te066X9RFuKwT
	 vFmhPmJT9UsGYml0k4FoK8a87i1hkWiJ7isJpDR6JYN95quCABeSiVpN98ranTXfxc
	 E0RZLJwMYui5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A89C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 18:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168460734584.12127.1627932485892799974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e8c0779c1546113cf507ff552966ed3cba46a737b679489e2376a06b841970
Date: Sat, 20 May 2023 18:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684607345
