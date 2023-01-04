Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E86DC810
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 970C8C433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672828887;
	bh=RQM0jg6wl/bZ3K6AtRQ3VtaQPPh/oQJyFUey78FzI+g=;
	h=To:Subject:From:Date:From;
	b=dJ5ngikIOMqAge9wO+0zyPTx4nGqyNkMvJnQzrEJ57zCTgKIpkEfGvoR0JIcG0Tt3
	 JevHi1rdTq71TwL/uDVct6T+mwqNi0uT9ALjS2rJFLnRzyuEaLiOuARiy7tQWMwNEX
	 QJjtASdCpU7mSrWpfC20DSjPWx6KimunEZrONuOIVUoL7MYArbBw7rel8RBrk8coFx
	 fwOW3e4IOjnRgkgelvLG3gaxKS3TDf/emtjl0E46U7GoG+mksRaxg/pK7nlPZmMCRF
	 JCeb+TPmV25tRFjFsfMFQSo206Qrw85r/jxXLQCDZaIHApmdITF+QKm1jtxXPTjqHn
	 2TRbiPFJkHbSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DE9CC4708E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282888750.16330.5076958807064002608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f237c164bfeeb3ed175cd2d051d41cc9e0bb4e7051a6a698d119814d7fd601
Date: Wed, 04 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672828887
