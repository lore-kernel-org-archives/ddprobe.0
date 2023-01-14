Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCE62F51
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87B7EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673697087;
	bh=WH8CGRRz3QC+DQoJQ6CSE+Y8szqkDbP0kygXq5T618I=;
	h=To:Subject:From:Date:From;
	b=oslHdaNUX4DIa6GzUtFJ3G60eWGz9yM7fE08duiDUz4+2z+vgsJgQK4cELeWb75bg
	 TGJi2FP4isfclvNNm2aKujRc9//LV6Lp0c0E5XYitmr0UwMh4NJnUPQG18RVG6FoN+
	 zEpZn8RWtbtO2377/3uCjiM7TYML56DsvjcfmmNj5wRusiaVDtgqhIDwwDNHvHo0cM
	 bMLUqhrA+eq5T7eaPs4XL3L3aSiRjQTAstKQSmZnHkxobOq/mgJVy3GNW7AR3nSQZo
	 owVWsIMq7IEOVFC88KuiQQAp3tYtIffNWtkNiSEPWhdaT9H7Pe4TFKfyuNr2J/Mj0g
	 qhT6VSUGzMYLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68AF2C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167369708742.22111.13197877859670178273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa4ba7a952ab2cce5bc17d117cdbb33094732debc28c38b1f732a78e1233715
Date: Sat, 14 Jan 2023 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673697087
