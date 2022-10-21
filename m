Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC7417D8
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2DEC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666338653;
	bh=lOMlCQseS+4cYWT3T8NeJtdCtIUSsJDq4f7MRtttZHk=;
	h=To:Subject:From:Date:From;
	b=GRvVnLvn/UkBdOt5t6mzcBC5UcK22qUhK7RMwNqADNmYNM/H6c4ZZH0WduUwtFMVR
	 pOVMD7NN3diEEvlIBJDz1XawQBv+C1UiaT4eeFjyaK2ymBK1ilVQdbraijXVs4CQKE
	 RRRQ5zNClYd+g3CpwbJhY6Rw9BeygpvWbYujPyHg+Ms1H8WQv43JwgPzABZTJTtA1I
	 COZcidb2gVyiGNhS+O2osa6tppbhTG2th3e0yBIIwQBHVsS1VRmSHH2swimu+GprK6
	 ToDDF+MtNe8iCMzf0qQzimzvdOYr52ksXIg5QMLE+G0KNT9r3Rd2SH1+29xeeQgK1T
	 TZXWSko76OMzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53218C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633865333.11080.257940102734524775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf19927faba9e60dd454c5729482ac571b3b274cf2fdbe46cc82b7694ac4284b
Date: Fri, 21 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666338653
