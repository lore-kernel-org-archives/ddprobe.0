Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60613138E
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 08:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6167C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 08:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691398388;
	bh=/UdBp9is1Cca0DJ3wsHp7tmqswsnxv6r80qmi4f3Jbo=;
	h=To:Subject:From:Date:From;
	b=WZFLIBfKgykoz/gksUf0v6nzLtE4BEvz1lth/g5EIlekrQmicT5TBm/bxMabVP0z8
	 GUQ+1V2KWD6rYc/QVE+lSz9jgvr9xhW4h/TsEwlSBWq8sDPT1TtMgNt3x1iGlR1Xp6
	 dv/+JaR+DfijuNjqG/aoHnfpz4tqw8LDq9Lz/3QECBGjpujBH/AJoiaHcKMUfZ0GGc
	 SVR7onpXYcb1fVyKBPqbNs1EHQEN4rdq08flzsPV/BhUb5DVWCmbpF+PYoDx3rEVHN
	 1+4SA1RVUyxMj7UQyE2Xd/wq7mNIo/OBqfxAYBiQ4D6dqUReGIPDxy7d7IozSi5h0d
	 CQoWpqt4M2brQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60E5EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 08:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169139838873.27343.13925345811117450749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a99845143dea6ceb7a800c3788d10d244287b84c30b00a2ab70532f2423d26
Date: Mon, 07 Aug 2023 08:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691398388
