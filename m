Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C72210E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 02:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 27106C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 02:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680921666;
	bh=O5a+Xzlt1NIsaAo3arhkY+4c167WUgLx2ii/gXT+enk=;
	h=To:Subject:From:Date:From;
	b=r0XrcQqG//XCyv7iA+2M+aANIlZJAqeHjWT6az0X8TEJWPvMP84ylOMNwk7mhBFno
	 c4+gHE9/rhOJB5Taez65MnQBOF9tyScD9Elqyk7bY/5bvZGhey1THYzrRl8PaJEG39
	 dzs/yDw0sp4hRW7p9jF8PGLTW4wGdDlAjCMt/07dl1TghrWGn+OQO0kP6Gjurn4jdi
	 Hg9y74XK5CoKGJ4ROZ5+ausSR/2FdqIDtr8mBjp7hUYkSJIlredF/CEjSJZETKnsDw
	 G+kXv6Jke9zrt/3ukFXoTD0ghqeE3rZPXYh5APL/jtyEf0rW4jxQ0Zt5n2234L25Vy
	 BFLkqm7ec1xkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F318AC76196
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 02:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168092166590.26286.14291224160225859360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3ec83a4d603052bf80ee9a896f8cf02b882b7d0fceb64b7fe7eeaa9d072fd8
Date: Sat, 08 Apr 2023 02:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680921665
