Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8F5256D
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F0E1C433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667519454;
	bh=j/EUC9tkreih9HG6obEEF/EQNZz9OBxv4iDhJLShExg=;
	h=To:Subject:From:Date:From;
	b=QglLixMlspiFKLkxdtyocIFy3dx+zhNiivk6gEnZpeS7B7OQgNxa7vQsyGKZw2nni
	 /dE/bfc+XT0PrcJXGnsZ74TwgCePAxaf9nCwZfLDHUZLipy+QW4qveZ+PCBjeaPCoF
	 NEvjvbEDL3C9wG0QBFIaaVnL13cYhnvxWjb1p3YmbrgD526QpMPqAXya/7jrzYaeQ0
	 DGR0s/sal2eCc4zOP7ztFTvgyiy3+9GHK84/XXvIbnfJ9a3aJRN5QWv3W2IXgCieg/
	 XaEPHLKDgiUI44HyKPOQM1WAIvhPATAP4A4or1RmqEz83kdYegvm6czKm2UIqV2/Oo
	 eTI+PkyHL3J7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F13C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166751945440.21484.16951639161606178776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6be7f8a7d8aafe8440b4c85ef17a99b20510dd39c7745ec2ba659ec03893a8
Date: Thu, 03 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667519454
