Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B530B7E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E9AC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662078053;
	bh=fAm5G/u9+57SsHO+rNnv5OFMEgIPUqwrHNS5Z6bZ0Ok=;
	h=To:Subject:From:Date:From;
	b=PF71OTJMGefpJ93QqdsEHRAO61FKuf3tfh5HPG8U+YnAvEo0sxUZG/Jdo8bskRh4g
	 s8XB4T8ohKlXXhvpmkVexI1NjoKrFx7qTYg4uXqy0KWXiGKISC04uXKW4RDVY7q5vF
	 0WFRICLHEang3AsMws9fGFgc/NZ4DEdhKqpaVB+pQqigd0dJaWjyy/peXM/Am6M/wR
	 u9r8U1qHqGztB0eGWSbXf93H4HBOBsv0iWguwYl19ldk5ImyUdQuMUWa0t11CP8UUy
	 mo3bYSoR06jPQavd8U1w1J4gnNm2HhlLHAXxiJnv4ydYJaQufXS90DktMvNc43AOAq
	 2ddo2PsyJKvrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F413ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166207805331.6981.2176635582195475034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac0924ed6d0137974a84e35265dea82c6b49f7eb434cc370eb51d70c9524094
Date: Fri, 02 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662078053
