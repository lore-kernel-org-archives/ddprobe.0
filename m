Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD93A622
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B144C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673576487;
	bh=5q9pc563ui5gHBRPFRDOl54BKm5GEScRlN7cvaXDlEE=;
	h=To:Subject:From:Date:From;
	b=TFJsvLi4N21flWVzs4SVTV/9Tzw7nZD3GMBoXaYv7MvogD+GU5nBhXxHn0CHNsQha
	 qammSm1ltpWYzs1GQFwOi9r4WzC9TvXCerT63DhPSNSSIbnbbnwH4dtsHK68C58eBM
	 OMoBWnLXKAVr1gfBRv94hkVoPpxjIvAq9s39lCTcZrajt65Ji+zVP2a496GSOTaBuJ
	 /pbxN6TXj938s3l/WM12SMYvyZfCSqCFpf2YHfLwZmq3+z5HSZOzdR1xdFP+l/vjWC
	 zBQmOi+YfWFhAAseznc07gkzfcJMMb6zddvfOx6l17XY6n+1GpYNAhElTll853OwX8
	 TYGu8hf7EGexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2EEC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357648737.25741.17703225465683624276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ce61f7b9c2a7a51afa4e2318a193c4c79916c152eb6382b6ecf3f58fc78f8b
Date: Fri, 13 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673576487
