Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF9A6108
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 15:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AB1C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 15:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687708388;
	bh=iWBavymWUAd8ZHI2bFnh+6+PVAOZLqjtQTu5vfnhnoI=;
	h=To:Subject:From:Date:From;
	b=aUm3oWLjRKapJhTryca+QQGrIb/AxDn+c5NIhIEFa7lUtMSNVyMku6haLOj+lo2Rc
	 z3JDy69WMGssDo0Gpzddp+FSafHIzE7x+YubJG7t6RN1qpeOaIR9di+02NO8nP9qlI
	 oqbDPxggQ3WnyI5EzwntJjZqciSdWMQbR5JeKKCTUVBNZ0Da5hAxN1fFn8yBr9tk38
	 8mUOZRY22lK/Oz5yu3tv55tSKTkCbHjtRCUKjgRSqXME5yN/BmWfuHgcNpyAJtfgP/
	 BD7TXPvwPwnGelMYQqtCSNk0noRrLfZKq5qez/So9wQ6vduqyKxP9chIx1fVk5UW9y
	 S+uoQX9DQw0+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C62EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 15:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168770838876.11259.3479672789083149158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729c2ae1d808cfa949bd6273c0e866c6f61834fa2c1d76036a357c512d8a014d
Date: Sun, 25 Jun 2023 15:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687708388
