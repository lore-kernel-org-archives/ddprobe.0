Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9D77B
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 09:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96BDC4339E
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 09:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676539265;
	bh=cjA3ByL/EI98/RFecC7fqesxoAz6rflnkallskIhgtA=;
	h=To:Subject:From:Date:From;
	b=Cz2o+LiSijC34H4Cw/PKMYjEL3KV/qwypRph4H3/zFF997acnnnz0cnQf+EliIUzn
	 U0dPsh73/0vDiai5O1v4FQU8WXwbB2n3XjsJ2rLUNqfrGu3rg88BnqZHx37ilsavPk
	 Eilw7aX1ewISSJPyjV1Hd7xluyUPGUuSA581pAwBghErmzugCIMnmhx9wKufF+xru0
	 ktkalSZpF2zXJn9wRlBuNCl7pPVvSZ03YftyQ+n4rwW+9X6s4XMP5ewb9SOHH64aKo
	 IyQPmdaCsYS/Sol2sDZI8ujSMPwtCSknztcH+rppn50zgrG2z6V/Sx4brkyOc+9KXu
	 hZkldU8jVvfjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77C5C636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 09:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167653926574.12680.8331326056912797119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b7ebb356d76d2fcf5aac094ca6141575a0467b7407166aa0e688f4a313ce99
Date: Thu, 16 Feb 2023 09:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676539265
