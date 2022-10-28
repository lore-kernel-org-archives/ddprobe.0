Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A392563
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E59BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666965054;
	bh=nzIb439OVKpim/8Azcm97QVQ2hhjH8oCg8AA57arPyA=;
	h=To:Subject:From:Date:From;
	b=UDM2vwtuU8ghuvIn915acMXnkjeNv6OCVcSWs1iR86K47NdjGviFacNljx0O43RJN
	 o1fueiMzzhGaDRpGGISpAxKk90iQcHveucZhrhuAc6dMjbRGD2RhdCWHlc86qsE3aE
	 p022IPsBGQn4qVrW87/rxv0jml1XHNo+hF0VQo2uQvl3fz+DQBUaNJo6fMEAlcIJwm
	 /PGBCOb+bCIWJrYVaKMZhenkIrwJopmr5S24OKeAHXmU2lvheVyU11rbzyBfKvCip2
	 It5yo6cIx8bQ964VQ0ShqAHu5IrBrdHiLvFI2IA9zeuGpC6K1ID+S+J5cUzzDK58cx
	 94U+IhfHn+ixQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57252ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696505434.27091.8748909863768979595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770c5352c509870561d5fc2db6b646081132fb4eb35426b1744c857fc7abcd16
Date: Fri, 28 Oct 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666965054
