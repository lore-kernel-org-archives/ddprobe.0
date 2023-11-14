Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCC43A287
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV6UN6NL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84724C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699961896;
	bh=3Ke7UcMQuw6qqNyjHNNGbVj4T80mkNop4n91ncdzQSo=;
	h=To:Subject:From:Date:From;
	b=AV6UN6NLekgeHDI2/XPQNGwEbPzx9kpGDKq1mMigzU5DLzX7JuW6ivYwPYV1Wx1za
	 cpW/x2fgSXFo9YAz2CcZivD95dgItI1MN32OIO1R69qxQfTx+Zcrc8XcYlZ300B5ZU
	 NzCZJKxEGUTbkvldZRvFbI7t0Njc4hkM739BI+HIdj1MywyVNgY0NAZjevJfIYFOKt
	 TFKMQE/kKud+l03C5FfPWxbFWE68fuQ5XHgnfegREp0ecAqNyZwRa7kCDlHS9uFyUA
	 NMaKSvFk5blaYxQ2xYd5dkUJX/B1EgV8ir94khsfeRwhqhigYY+pupX0IRBwNXeN1z
	 b7zz1vjqkchkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670B9C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169996189641.12332.8229351711084540893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bd33999458c956cfacd6b30e2188dc24b36d9303a9219382be1f8d2f67cb74
Date: Tue, 14 Nov 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699961896
