Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C321C29
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 09:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA72CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693041848;
	bh=mEfxciLMkLLicd/1oh9nRyjqR0yl8e/Xb4DJEMBY+qQ=;
	h=To:Subject:From:Date:From;
	b=IjYX7cqd5c0UUw2ZqL9eXmCdcSL9KukV+s0Is598h24mS2+miheCE1Mvri+wrQ9N3
	 DpEDnyuAKEq0LCSTa/hJwHYj7CUJt/zB5zfhql8b5i/aPIpuXMjx25T5iEcJq7NgOB
	 GP3/ruiwPkLLfHef+BhX1QJPCqpdzx76LfOJ4EjtcQaxCwmBnFsMYYFKd5qSMaqrxK
	 qDlTMnbPbufueN0BAdgne5kKk6+bfst1rCv4TktRiHsoLODApDzU0wQFqxmARPsTuT
	 o2sgk1SgXGc6w19Mg0FDu5IRsYT8JcZ2irL00e6gC9YSUZOwB1w5EFFfny6YZPST38
	 GKefw+BlMU6nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AE5C83F16
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 09:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169304184867.1578.11995487520130987780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f5943c793faa1209c359dd0d613ab94b307f688ce304866b25960859e27e74
Date: Sat, 26 Aug 2023 09:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693041848
