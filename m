Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2188460
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 15:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B26C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 15:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686755228;
	bh=Iaxj3b5j3Pw5oxTzK3/cJ09wUEiRsjNod7aGdYMyj4A=;
	h=To:Subject:From:Date:From;
	b=O9hvc1iP1eKC28wKe/Iq7Kgy0wvMIXcSPpsDj49lqcGS2QNx2C0ybBGdrlPuZSgnu
	 1fqYRpd2ajqH29wSM4QJNOLt8C50u5RSY8lhbf+9IuZhEJWRXVp7LtvyJuuIkqC3rX
	 f7EBNoGlXOfL5TaO6BGcj4azecrvGPNeEmJmL7jdIMltOjCB/rzxDhtMXcOIuyf3z3
	 y34Jou/3v+ykqIsP7AONuFhYaXQ5jxUBeVXWz2TOCUNJ3v9O4KBExjCsUDX7lrop1S
	 1x9Zh3q+k51NP6vOjPvuxoyP6gcM0Nn81B8J+JxEMYu0QtXPc0+crYETV0sSKfQaLS
	 v5r7uHuOFgaZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA97EEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 15:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168675522875.25329.11747951026996201036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa763bd63fcf19348460ca666f02323649cf3bcaab3f592d19f3bf81ef0204f2
Date: Wed, 14 Jun 2023 15:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686755228
