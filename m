Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33DD15B4
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 886BEC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671690687;
	bh=2coISClqORRhYI7MH6pnypqA0uUBcjfrlJIx9sNOyDQ=;
	h=To:Subject:From:Date:From;
	b=Wp0Xkri0xDry+82jMYg0YisAiFx39mNTLBiMeKIXGjlb1++fLe1RzvZ4uh9+niAGq
	 ILJOUNN5zCQ4pIAXNceEcPyHMR/V3p9J6+iz0kY3BJAU5JgNr4Y6mqQFtd06fto80r
	 1u9xGsMjs0n3sqAguzUWO9NHwhuDTwAdq9UNkmQwHcfwVmdDZ3dMlkKCBMlXuRM4w2
	 OeR/MXwLkwwcZvLrPPMmHPvyjLSob0QTQF5mz+8wcjvwMC+v0UMlDo/GWjzS6ETL7g
	 iIZdPEDXmCi6MgFtLW1THBxZC13VmRu0eSGwdQev7UfCHFN044AbHUatwdAEnF95JJ
	 49l9vAJhhz3Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8A8C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169068740.4442.6017217976300294881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a5b715edd855c1b5db50773c88260376a9d0c22387d32cb9c17acc8edec134
Date: Thu, 22 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671690687
