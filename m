Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96881851
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74404C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661496052;
	bh=0OANyKiQBCjjzfzxtV1pytmj9cSE7k9oVzwmGEpSVO0=;
	h=To:Subject:From:Date:From;
	b=pcpAK1Gfcc/JcOZ13M91UEqaBfc4JyN/EtBpzUui5UL27kVMYMOll0I7DaeIy30/B
	 KYOmL8DxAr1ZnD9MW2TsP+b/EV70L3YWKuHM5y6kKqMmVNo3QXcEolHcPIeyvr0Sl6
	 HbogAC0WFSuZdvjVbNLy4OHrGIEApyEufr90NINllvLGKCDhlKEAzl1QUEiBu8+SzY
	 hl0zv5Mcy70RptwwE8JPQZ2fGF4ejTF+8xyCBjskPPJ5cyuN0/KTphupa7Q7BFw7Iy
	 dPM+6P71VnGwNRQPv9i+d4W6Pg1CMjpX0gqMoJASOQzAhsiVTijY+ObRPLXF7NtK67
	 PVYsZ/RcKfuRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F52ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149605235.6101.4503305372696385977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033d16656882c5b501afc123d6cdd4345a801f89dc181b61d05d20a2cff4baf5
Date: Fri, 26 Aug 2022 06:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661496052
