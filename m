Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E94121358
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cE6DcGzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8021AC433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700645296;
	bh=BGFtOBVWYL9PcBrD8ml3tnBs3B4dLmeI5B907CrJ9Q0=;
	h=To:Subject:From:Date:From;
	b=cE6DcGzv+5/PPhrYl8J0pkaoukC1sMJuuyXYUC5OyIJLJDkx3WFjBKJHmexXE0qAm
	 VjFpmpA5SJ3x8KgG4MmXXj6T9ZnzWkeaQMSAQWTwKWJbBQxQUJGs4ItTC2H3SR4ez6
	 V12EMTW8cWJOiYAplk4KmFv85K/KlsWHixImFjFDbflMCZuynF/RSgrXPZZJlWSsZi
	 DVSyKRJ/fgevgNKkhP2+ip3ryOT7MDHdi8WJCYvFNFqUlEDV87/OaBTGFXVFyi//Pw
	 A4yHV9QmMIghm/yMWwlBJq5lu5o11S58yFV9Sdh56KHCg25KWDRCKF8ED7MzS5WnBf
	 81Kaz9z5xLGaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620DBC61D9C
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170064529638.17255.4855934015883247134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab931223e10ae940e3717a042b7910d9b8148c3bb93a3ceb4bd0db4d607ca4c
Date: Wed, 22 Nov 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700645296
