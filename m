Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AEB7FA
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 09:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD87FC433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 09:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689412268;
	bh=DrDoEDKPquvUk5T5htvdWYtJ4KMMMaO4qyMhUjnc9dY=;
	h=To:Subject:From:Date:From;
	b=fUiwyX1dWFs48sY2ipcJDE4QfhSnRocEWOp0v3csNLuMdL0qOJnp4a3xpNyTwKqEe
	 Nrv2UTA1Sq5Qrf4vSOEOKp1Fiv2yXHJ0PgqxlGl2fzQHp0PQSt5oJsu4XYMvZiayVz
	 vg3eDzkCC+WyRZW6IzjK8akStQCBNNJz2oYPECrLyWA+7z2E2OMt8J3O6pSzYuHA00
	 7vlkeGSXURt1ovLS8hiKVVeimmmbwQZ70CXm6McZ/wCZtKdJ898p2QTxpxIZFYsNAv
	 UOjR1QvsLDvtfLJiX6IkG+3AbKd091sZQ/WDzQFKj+8JAZXCVxtAv2BOewBmKQEzpa
	 LaVzbJHIRamsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAC5EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 09:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168941226869.32572.14755191986377625466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80cf8f4674254d43b3c12c06968ead546093a33ee1f98ef5f88552be01cb8bd
Date: Sat, 15 Jul 2023 09:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689412268
