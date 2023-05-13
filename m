Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C81A2261D
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 17:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B41C433D2
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 17:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683998285;
	bh=ceGQd/jQN2oBT2guqognkQX3NjplQ9F5r2CQGySJ834=;
	h=To:Subject:From:Date:From;
	b=Pw0p0vGrticLGOEjG/NRjqj79KMRSJBKw+qksG/8gywJ88s4CNu7jOBtHrUqt2vIu
	 Unh8ynFtj2F+N91GXTYtfdQyv6bqYEaRK2A1dZ2sbrjifizN8QodbnC5zNPB3t4gje
	 i+8eWuaZ4XCx37Jga4bH9aiYpwLTEi5knSQDILgaGiMXDU8U+7jNtkH3xqRBWpb0FO
	 saw80ZFW7G2/YLHQxd2IYPPpjr9dGpPiLFX59B8dg4FjTAre4w0g/T14ZBCTPZvLb9
	 zN1Mo89E+dyH1Z2ZJbA+Xaa2f11rsUdtqIFlvyfCUKdG5UkhVRHGTlnZ4eSmpk9K3a
	 fMVrJGFYuM+7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28AFC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 17:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168399828577.21499.5760421753606167601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc5a7c0c00d0700d8100bdbabf8053ee983a26124412b699a4a22d9f0e7cb9b
Date: Sat, 13 May 2023 17:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683998285
