Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEC7E561
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 15:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF482C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 15:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688137388;
	bh=jd2jiAOaDjJ2tiBFjt+RbECnkySr7qbFRlxMzR+EoUE=;
	h=To:Subject:From:Date:From;
	b=t0Tb+o2E84MGxtokjiak0IrWtrvuQ8CHRt0kXytIMCXD8OWvsebEw3dzDeoOaQpdI
	 M9fgipDyrE2xZ5XoVuRdKTxuekDdPhn//EE6j6Iz/urmvTnc7NWhcvudRg0d4XzkUw
	 gZFi8rsAiUCR/SQcD9Odlep0yIvVijQ/TsU8WQblnGErlYNElBdd2xKtORwzOvhoHL
	 mGqNFvZl1mDaLhdN2FG8fjDU5YCVy93WBMeTb6XQuYh9LMNmJbm6TXF3RZY7R+eVEE
	 gTCySc/8y+PWt5bu69V7otAB8BnY0A530OmwzRymv2acdUtWtdtwDsvJaz79csQK9X
	 s3GvQoKlhHLZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA2CEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 15:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168813738870.7179.1352488259184645532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558e51af2355e5db12419e8609c317d03e134696ef1a5e90409899016da90195
Date: Fri, 30 Jun 2023 15:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688137388
