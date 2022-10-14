Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F573D6B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79422C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665771653;
	bh=Y7IA8ZEzhzNJJwUQ4sYsBmxLmtF2QD6U4CibEVln6Nk=;
	h=To:Subject:From:Date:From;
	b=ZxUzREtGyzlxPhPWNrThPHy/31YzoBNP7ZqB4o5uvCuBFpBGV0MUT2JreFw6bcQ5Y
	 8qt50aIMYJcM+vDj99PeUcpM8Iec9de8J0LPwWuQXPash+0HG/P2l5mrK5atk0qjev
	 u7jmXxVMWSriKBtgkQzNUV1Quu3V3MrTQlAX/mSCC9o4aOswDA8AyL0mqljgFQIxF7
	 ZiHDpTtqrbYeADhz50zGsqHOoCqLyrv9hEb1l+zXvTfhgtLeYXWnfsYbPIdLhkwRfv
	 8lxBRqkaNkbXbASPttUK6dZ7NAlhpc0eBmTcZ7kw+TWlOwE5a/DjujG0Ssw4Gk728K
	 Jaqwb9oCSnwZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AAB6C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577165336.11348.16602967966668820891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146fa478366d3949bd895fdb1817a3b09e8ae6bb8a4fd09a8c41841c403efd2d
Date: Fri, 14 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665771653
