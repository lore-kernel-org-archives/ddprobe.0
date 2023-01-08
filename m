Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E527A3C2D
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90FC4C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673220687;
	bh=QCmbZMnJW4vZ7SqmHqOFZ4cj2q40krYXv2Pccg5ULRA=;
	h=To:Subject:From:Date:From;
	b=Azw3Lj76fHw7JKQmU7xUZw+22l3fj0rT67lC4gKQt6LLCPw1iQNB3+iKpUOr5un05
	 aMOaXVH1xdt7wsKclmsXZrICrBJTjaL/aO/n6YE6vUqR4dG6NIXROzV93ueHrKIqsn
	 KXRYHvDKYhyyBo87UWHrbH0Qfe6rdRCdgJzgN0OhB4nhkA1KXxz7z860JJ5k0nPOhL
	 EbfAgadf5DrMhi86ZUVjZUlV8s+bq/n0kuebYdesyPY+LYD6tTpVUOgQbMijgPlna9
	 xQl+eQGGeaW6KXjVL2QsGr335eA4K1xg1ybI2IETkkPvED06kbVgffc8lb83Lz+9n6
	 2XpSzg7kBgzaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B357C54EBD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167322068743.7564.13856118876681156737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efaffe4056dde5c1c98faac7a7f3cfc949fc25a7f4e9a6f46b558e1a58d4efb7
Date: Sun, 08 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673220687
