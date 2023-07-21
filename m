Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D70F20F83
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 18:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2EBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 18:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689963128;
	bh=aLX/GX5FyfM2XsoEnaDOz7rKvJ8iBtz6JaEi8E/lsKM=;
	h=To:Subject:From:Date:From;
	b=atGVFdcy5ouHZVl8Rdzh69byMNH85aduWeOF/AIKtKkDjQyLVQSWnpKhcnWNjpU3z
	 HepCjj8v1SYD11clMJcIC1ZXo7DSBQyMoBvO5n3r1ut/9hynvFCEX/f6vSqFWcS1g2
	 ZbErbqIGkMUaZWdiBocRz2QAYdWUY1A0GWzPmeQy7U3uY/1NqijyHxtJf4yWH8zteo
	 EnwDl3SuVLfmU7sLYTutfPOXG9ifxr/sm8Je6MTzscZhOAXiLTt02TDJ0Goy0HGtF8
	 P44Q7WPdtKpQCf1j5Rn3r/jJKZK4y3F4xfvxHWcLG5zXVlA2w5pikKeLW37qBaIE+Q
	 ZpgVCBmkyCbGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7EDEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 18:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168996312868.20624.18291625590322103803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b247043633d8f6abe654d850442f9f27f1427a290ac7a26ca9bb6c2acec7bae5
Date: Fri, 21 Jul 2023 18:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689963128
