Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33FD632
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C03C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671326487;
	bh=OGEtRgtRcjTGY0k3iV0dWHlcpyS8St30gaL1MfpAWbs=;
	h=To:Subject:From:Date:From;
	b=KWOd82XKn8RjgeKKOyMkOZTnv2ePsVJEG2w9MyIjD4Uf7wGb5ATn+6uTqMT0c59JN
	 dzy9C2zzf5breqTlrY3q5mBsAtIb5pWwudn+BUdQyXTRNRY2MxO6BqWLn38bEKnRC8
	 Epyp1JKk9qMt3SwnHqOJ6Im+2WkdzfW2KJqLPSTkJ5w9fK9tIXUIUVUBEpXsSRvsog
	 fsKjUPUSL7ZhUndE/qbBobdLyltl6HU+ErYkTEYOnPtMR+i2NOsA0A1gZklhs0rKlq
	 hdXBQ5MV1cd5FeeAZy9Ub+lUMu+BIfbjEEMipiQPiKg/eh/ufpskItPnjlvXjy2x2L
	 8UMxf2NR5V+pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68CB9C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132648742.11862.4803748178864591195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17b0950dea3eeb28f9532e00186c2bdfa08ad86788e34e4fcfb8d40dba4675e
Date: Sun, 18 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671326487
