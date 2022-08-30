Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D755536A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86794C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661826652;
	bh=atb5JUMn2wJn3YBvPPcj6pWP2jjfpaxNcfjw7jFwFBc=;
	h=To:Subject:From:Date:From;
	b=H+yJ4nifBtsMjwdeH0nQ6yGAvWODPLBMIUbucgcV2m9mldMKOEw4cmJgudLZVMGtJ
	 veG4+DDevQs9vIkjsRWBE3YbbWXNgtMTfqbSvYOVItF+mXuv5ebKuSctP56m011ili
	 aD/7opAot9e1KQ2BqVLrHPn5vpjBpRcO12N/FdJHMoH4R2CCyIzErmTu/EosyUoEy5
	 EBwTdbftQkoRxwpSA1P0B76Jk5u0bSLl4Ki/kzo6xO2K0AYIfJ+q1VsJzMJH6yiSkU
	 3T4rI/Bpe/Jim2ZvHHFxnxIJDJGQooTDtGTNvdprsUbOS9uuhu6E6ebfAT6AnX9Zjx
	 InkrvhICrXF+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D5A9ECAAD3
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182665244.1630.1197032894930821147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e96bca2caf15687928305fdf740ebeb84f8e959ce9846df2146e3dfc83927a
Date: Tue, 30 Aug 2022 02:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661826652
