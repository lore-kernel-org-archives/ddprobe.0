Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC55D15A5
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 01:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D71C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 01:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693616648;
	bh=b/Wl9x0lm4uo9Q8W8XXn113hmOAhhoo15RQet953Egk=;
	h=To:Subject:From:Date:From;
	b=PZ7/bAtif4hRNw5lbqXXba58PxOnOpsOuD+8m3y/ZixBEvbSGCsUcptyOcM8N0RjM
	 jvuppJ5kI6vf9QmAtH41fLPThc/DuZq18EJHQm2znMhxheKym3KFk/tdj1nlEq8LxP
	 mvS1/0WWIlyIu8BfTQgTVUWZ1YN3/1fVj7dHApdKFKJaJE4oFkm/mJzFWwsYRYM/oA
	 /qKqLmN2qFqbs7EuqwpFV/sqWedas+gH9hI6u84gLV/KmfYjqVZOm+JiEBmjwAXEQI
	 M/jG2wPYjUBNlUM8LCcohcjh9dvW2yt9h6+N4ygpKTLMt7jddtJmEzZwNtbPgILGOs
	 bG/2RcAhivcYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59EACA0FF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 01:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169361664870.14822.14856162226625271145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7677977b2988fd2a7e61ce07affe0f1cfa58aebcaf5d9fab9a034b15297f8e66
Date: Sat, 02 Sep 2023 01:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693616648
