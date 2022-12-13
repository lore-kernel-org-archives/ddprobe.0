Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A2823A7
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE8EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670963487;
	bh=0QO+ZJHVTBEKD6sYc1Ga4RmsGviLNYPY6scrWc8+Xac=;
	h=To:Subject:From:Date:From;
	b=pfPwXUlZk8RVWyRk/u17OLEjABfhwbzZUrpLx1pzNyrvp69SIwnmnT9KgxaUQ/S4F
	 K3S6Y5xrZZS9JK2YVOkZUZYtZENG2oqURaGEBr6sy+8RsYmQWQkgw4S5bUSAcev8G4
	 bmQP53JS4sJ0/Kemj11NlU51iz3w+x+aDs6H7NmPZ9//BHJ8fWRVehFheCYPTL2Bdp
	 KFMmocB2oIoTIAL5o+viH/8BKKVS8jZIn7qst6FTKJ6VeyHw4af61syqDgmx7Hf1fO
	 IwqiwjA4wkIsIbMatT0151vSsodpq/cps1jrQ38x2A9EiFFjpwKsjMptnySBwk6inC
	 wKKVW8c7jl0vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B4A7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096348743.13876.9832569587536045055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40785334149860e8aa4482a1be21c0c2088100862f7ac0104cfcd0045d4a42a1
Date: Tue, 13 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670963487
