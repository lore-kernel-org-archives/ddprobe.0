Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD94B17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F33C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673418087;
	bh=Tli7PVLR4mrDrtzjvx9ZmnVfB76FsI5nJ8wB3qbus9g=;
	h=To:Subject:From:Date:From;
	b=gNO3K/gV9NH1UACWrr+VpG2l6xWnvo1B+hO+qELlb+d9FVKIXGNOS9B/Ms5bHEDcg
	 ls0Bzc7ozqp4TGsgur2vBL+BedNwbmEAZVs3AKn/1VNUHjl9MAYUbwqhoHOLRlOAak
	 da+T6ZguYkbYAqWDLagSehy2WxMcXx55h+ak0Pn1pVbOP/d4nQHKjbGG19bTufE8S+
	 +n5HdvFObIDkywIDiemu/Bqd0AAQGhpYTYVws1xDptyYn/jY9/EzLrTykphwwg3fS7
	 NMvaBEGDUbapWlVTPJI2iBtID8VdKqjEP/uP2mmvBHYv6o8uvBVfa2KhOO0ds/QPyg
	 WvRvTwRtoQRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68EA0C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167341808742.11707.47648592512463414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ccacc93d2dcd7ad20adbe8784ad2d800c0ff514932c30aea1fe4fce8e6445e
Date: Wed, 11 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673418087
