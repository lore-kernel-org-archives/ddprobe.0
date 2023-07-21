Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6108C802
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 04:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DA0C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 04:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689914528;
	bh=H0dgWdp+YTBgNu7Ts5AOEk3oLkux3TS7ahrOcEOcOls=;
	h=To:Subject:From:Date:From;
	b=GUyA56c8F1RDWEuIU2nDxeNuSWY1tK1binDFFrs99l6OCGRopte+ttnqw2//ApWM2
	 XhbqQ7Eaq8wcF3/vLDbxJ9kcqGbx7AwMbkmMDjJc3mcmA2LO0lZEeGSBaGBbaASlIY
	 HF99g+NOsiWJc/ceDtYP9uWX0D6/fI2e41EnOPBmgcukHL3UxG+cT2IsykkIURZJQ7
	 hQ18DMSuFUqSfvUAYYEIMfZRd9thZoOJXnwvlrxl6BTLznj64/0KhAuCUeuSTTW9DH
	 PiEIIf810nf35t8PCuaTZVgXE9+RtYt49M9457/lI5uDP2S1hLpbvcP0/0BCjGjgo7
	 bYC861kAyQNtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F35C001DE
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 04:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168991452873.14722.15510188084861726097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87069aecd30ef68eb3042b93ab6474013a95d825210e7bc696d42613bad2f1a
Date: Fri, 21 Jul 2023 04:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689914528
