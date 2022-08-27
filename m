Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF2515A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DCB5C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661597452;
	bh=IUmMuiCtIZHw+9XhDt8+n0xVLkoBfbgFpnWmRmapFvA=;
	h=To:Subject:From:Date:From;
	b=PsPusE4Ge3yBY3ev3rlb3QwEMWoN5kGAce02EuT3GdAL+QRxSSY9QonzVQYOQn/oj
	 9z+BR6Rcq9y3i+nxS3aUC47fKNUFY5ZcUiUzpULKVh66cQQm8rUw83evZnTQ/drO93
	 0H2bA6/dMmMETparjto2m7iuyEUXrnfcUEzC0lwZwvnFQwENl+ROnSdBCYRt0UK3fk
	 mmjpOMADi58DWRzbiaTB/dRNyYaIVkMK0gMsfbfF195Rfh9Th1eC0IL9ajJW3HsPw6
	 D4F0n152kCrlOQwaSOSc7sFFWtHjxYu7wQQqP/OgvhFZP9TkZridoUXwaqBHlbIdIF
	 AzOXcbgJi6m1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB72ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 10:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166159745234.13669.8158668246468641541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2034d5f99c074bec4710c1e68ec089dca12e8c48e3735e23eebbeefafa66c0
Date: Sat, 27 Aug 2022 10:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661597452
