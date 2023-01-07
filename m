Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54D58465
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90B7EC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673130087;
	bh=+nkj3qUeqwSOlcEub2bJmWyHqMu1RBVsKd1FBwSVNro=;
	h=To:Subject:From:Date:From;
	b=D+Wws4XP+reboqIALlGD2OUwlY1AEwqmYDZ6uvhPw05CZOnbv4GoW6QHTldJxtNQj
	 3pk0yZt7arlezorWzluDKg+QOfxIuFsysh28dAI4EA/vV6lKmDzpKjchrokrxNZ+fg
	 Gfudn9cE9IlXqrR6S+Dh+Y/GCEQjpNBYvk+2aVnlV857TSCsWD4S/DArJCblC7UrUd
	 g2e+tRDjdpwcUAGgsP8BxR2yeeDfuBbJOCUFtuyGql/U9kSj9EE3UX2Nbg7CJ+ymf4
	 mkYlBvLQ2NGV/Yx0G1dE1c2IAV3aeqZI0dZ98KUB1rHaGak2Pk1v3nVOYQiQzAMg1O
	 XZdBIVzDyN3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A65C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313008745.8189.5602586506712056982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15e407dad6c4901878d103a8a3d9bf4517f13b3a9ae771e90b3b2248a50302c
Date: Sat, 07 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673130087
