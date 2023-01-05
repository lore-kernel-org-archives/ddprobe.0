Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB30580F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB9BC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672905087;
	bh=K4Z9PICRVPG4JdtF9KIkgSOcYhdZ78C3Wa+nbfQMMbM=;
	h=To:Subject:From:Date:From;
	b=DuA9gXslQzpLs7oG5tfK2EPVEA427SGwxBdD2I4B7ga+I6kE3B+gxLxKNw/w1kusn
	 myk5m+yoc4ZxzAKJiYIHHJZUdQKEYrEBRQVcJwRZ7aOlxLdbvyOrdj+GtUyPkP/p0f
	 /ALJEhCnlan23xGSSj3IvC76QxHOna1PGaJ/dcX+a+/I5pmCA68OPcLUcoWgu/3b7X
	 U8NKSbq8sZJ+n6gteODL4Q0bvQeXz5BtlecdRgZ7u8lCF1R+9uChdSL3+ONTsNzJFM
	 ACL76bHQ5520pevG0O7/Mdoa+/OxQyGqxAhBGX5TLeL4bTe/9v0uPiHtcX+9KQKKkk
	 fMsVWO1liafMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AE7C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290508738.18972.17831230184947878024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06aed0c61ae57536a0cd99c8180bb4093447335df701064287becd249e8d52b
Date: Thu, 05 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672905087
