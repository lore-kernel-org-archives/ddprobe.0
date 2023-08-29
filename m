Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B88228E7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 14:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F88C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 14:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693320248;
	bh=T87LkTCByBeXh9jwnap3J1EfJW3hFuMlomSU7FxGQdU=;
	h=To:Subject:From:Date:From;
	b=dxkqOK9fPH8YAWl6lcHEsruUHt2a4KNWtmcpUSr4y2hFfXSr2PqEMGCQeDe5fwfYQ
	 DBtKku+Joo2bzD3TjPSpW2Kd5v0mMeFuY6AOWHfluKpsnz8Do+jxEK3/AZf5I/E7XD
	 VsCW4ZiulR/TORFtmsoRnJhzq5Bf8YxTW/b2Q/8mUibK/qNF3kC8c4oDLHjmlv4jAp
	 tRFTO9DQpwBvAxTI9ycbZAKBe6v0vLtwU4iystiopTVbKZiZJuMN8yplxew2GIjoan
	 r3E3tqiODtXCSWG04oDrPdqZV/HoHJMz5+JM7N8Drms8JqW3igerYbXJ5WDSWlYA1F
	 JFzXBTGu7TSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44A1C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 14:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169332024866.28436.14760726741687731809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb1ea0dcda12a9fb849d9cc948112a924729a419bab387cc12b86042e26b872
Date: Tue, 29 Aug 2023 14:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693320248
