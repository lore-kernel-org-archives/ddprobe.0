Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7AC523AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F943C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671746487;
	bh=ger/eb7ROCPj49H0rO2OIO/+bEbSjJ3/Mtqf0BbK9kE=;
	h=To:Subject:From:Date:From;
	b=Q77fSuLg4dyAz9gh+DgHJxTafom7hJrQFMY8GHqULbjYyhANYdoa7aEDNeHgQCG96
	 sxoZNdUcgZezUv1Z4UJDWLMjmoVO3d5e1n+fg++wIBVaE8ZZUu+Cj8qkqsGCc9th2b
	 Tb02X58HCW1LdO746IMBDz3ikbX1c6jIxx5WoGmYJxS5txrjPDVqEoEEuM17WydA/M
	 clextGqQ8yjEan3vbLdVdmppN6oqH085a4VSIXOgztqr2mSSKgaQV+a+cVwR1ccKKd
	 YKkI5bIYHm7NQN71fChzUfpBpnJGD9kTfXQHL3Pwxb3qV8gspmKnFd1VhgPwBNz/z7
	 Jq+6UkrQ+/dPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633F4C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174648739.32380.18331197120336841851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d18733f16d2d3eba726736848b829b9616eec36e8d6a2781830f0156eb6641
Date: Thu, 22 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671746487
