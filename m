Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A351847
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95D1CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672366887;
	bh=xue8139HWt6pm5x7DVG7W2eTTZ3iNH0kIvBnOXvBh6Q=;
	h=To:Subject:From:Date:From;
	b=mFQn1Jbjng/Q1IYbR5LgjPx68x8ex6ez9Hv7qFoJZ8zd5tj9JbZ5+v8IcIFN5+CpD
	 Ko97Txq+9O7UsQ5gINYQE8yJsEWi8E00DzckSVVWDHFHKCTEvduKW4sDdFOCgUVlE5
	 B6ZqAFkU6Ah1NKorn/WbtVCXqQwxzRUU+E4pZ8HPQ49vMJ5/WPy6zQh8nLQyDkgVe2
	 GJKbJaAc7OTRnTOwlfcTVeZwhyLhz/9lVA1ftZnIHQJpXmTm6u74EcF9zN97tV9lra
	 VAXBe1ceR8e1DbRPnxCzRk8HTEUmLpCteqR+RMklGuC1ddDPmUlcgF7FtbHusDq7Z9
	 ixGKme0XDy4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68303C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236688741.29337.4836160301953435146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2091b9910dcd77370e5ce129d4074809a4e6e563a4c70dcad1eb76b6d5c168c0
Date: Fri, 30 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672366887
