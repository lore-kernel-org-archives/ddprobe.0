Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC12AD39
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A6DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666817453;
	bh=g6xBRhX6r9T4kTNbJLYz/+/SQWDBM0Ccvdv+T0MUcbE=;
	h=To:Subject:From:Date:From;
	b=mauqodOzW45owT3ou0HSOLSNPQoQjXvrw4VAw6YEzfC4I3zfXiI2x68KPbYqthZxf
	 xok+8Z1CfVaTatJqTGp/Fd3EWvAoYNH8m7PbWt7zlxRpkm45VIbPb7BjU0EPnKcbm1
	 WVgCQTjN0pM9J3IaRMLW9N5CFwg0mR5q6w5pqYwWDQajXD0S1RA+sOB+RLnQbGfc5j
	 ZT3q6tWyappXs9BP09bgsTgMAm8gmUBLccgtiPhzkK13KWztsTs8biV3XWoZFhrO13
	 3ck97fsBzFz18vtZi5OKe86knDzC4lxK0o1EDsiVYot0j9rnIFs69jSM4UdwuPWrVN
	 lyUzk5jccJl1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543B1C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166681745333.10139.3057761532403311945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010f305d65f7e2cf0e15b189788deeaef0d16ad2a28978e435496a2f8643d365
Date: Wed, 26 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666817453
