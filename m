Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1265394
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C785C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665259853;
	bh=PMQrtZBb2P5MNS8l5HTS2m98obw8OuLlzCwx/H4z70Q=;
	h=To:Subject:From:Date:From;
	b=Jp+Fm1wvGdxApJMEIV41QJGRpuXMbg7CA6fssyUXfuzbYDpzMz2XzuOuCVSQWqS8N
	 PZ2FdJQNLAWZKgh7QDmHU6TEwOIWtnkdLm3Sm1b05WfJ55gJvM4sc4Buk2dDlxlxi0
	 gW/HVqf1uW5OpwPAnsI7Fh1Tdpva+Zdg9IcyM9Woe8Hoif2flihfarWNqRNhl+8hsA
	 mfY1OanZUpIKo9ELEKAna4BKxE/inQpWZJnJ0TSKtwIUrc1HqnsjIGvy7kotnekXlC
	 seTGYGkRldheUtrqEGwCfF5yTdfQ8Bi8xmct6MeVQsu725PSE/vNk4bGSfAtjMW4sk
	 qehtjyy4kTUnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53509C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525985333.18081.12946264138200952536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744d242b200c140a8d60762c23a440739171443378dc02aeff850341caf5a7db
Date: Sat, 08 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665259853
