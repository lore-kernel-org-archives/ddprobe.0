Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4881DCB0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 15:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C916FC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 15:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687448588;
	bh=b9b/1zcjIJIo9UDjtQewSJdgV2lyc2jaCTx63qoElbc=;
	h=To:Subject:From:Date:From;
	b=LdpbObyj46ndyO2Fo/OJgW0pEULV1oX7D/n2gteqpVYwxb1+A/Db8Me2VtBdFYNSk
	 7OzEAmR4pHuJ67E2tahI9EfPGiSC7fZVUFrIogFzNIlymSnYfTL/4GNDi2WskV7AMI
	 hUPENZNxK81twHcIK5bfdObtk9tpRoje7lghZebwZbhRUbkWOXEpA1gQUizESfg1gw
	 LSgUeTRyDtxsSrZxhvFNOz9hksGYsSUXoyIs5PkEEJHTYDUGi1e9Ec6/LdF8EdeIJm
	 QVe0Lt5NQbKmzhRQYbSCKzbAWdgkB6nn1Co6YhK4hbwPw32Vu5E5SIerA9CKR2KedZ
	 Dhmm5w54x6g2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6762EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 15:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168744858867.5712.4085376525715153361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af48c45152b68994cafb09e146582f9ca631600af3ecf93dd2d753e01c06d75e
Date: Thu, 22 Jun 2023 15:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687448588
