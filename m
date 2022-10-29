Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6327B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79247C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667009454;
	bh=L+KRQcIiW70IhDgC2zmpBvLJHgJNeDeBzybJG4dQsrg=;
	h=To:Subject:From:Date:From;
	b=HElH4A9ABCy0tOUR3J+0MyNd5pAlB0LU2NNPx8fFcUzFiRmMWfy10YUo5kQjcUUhQ
	 xGoJc1T2VP4+YihxP2SV3AuqrRYFSgjlo2l6bOramSrgULm0huDS0SJ/uqfGb52Q28
	 CG8ecdqvb6ra5N3ozP9RuJUCRBSJdrWvmtrenKUlEqfGld2b62HONpadCnLP87iR80
	 WOBllOzWG7aO+xtxAyYNxbFIPqtcsJ5fOHPYm8WNZIdm4R8X7l1X3+kV2XNmpSkfy8
	 bKj3U6MG5OlfLE7u2RfFAEjith6NDNvGwEReKzXRw2y9qNw2thy6oO883h0BmCWoa6
	 HgxzCxDQ25jcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59601C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166700945434.3427.3795048441609397568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740856e064a92a1fc4d728c4b70eb24c18599c239e85830f3326999f115477cc
Date: Sat, 29 Oct 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667009454
