Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0502E1FAB
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLrWqESe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81997C433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698044896;
	bh=lBgjw5OG6SFgUp/GmqRfKBvqEABfSOM4/eX33g1KeQs=;
	h=To:Subject:From:Date:From;
	b=MLrWqESeiBOSLCmdtlpNEf+ACoeqx9l+3NBcp1jBEyqOgFBeSSdPahKiZL/mEeW+p
	 JKCw1WrhCN9FdISsuIq8kk0eFhToGN/kByLJWNRp0UWXq04k85yhyl5OdVHfbMTT1d
	 OWc1G2hzbyjVn6os0Kx0j/RwRq+vfxKeNSSm8Umc83HuI+yI3JkXPM4TfV2sd8DNlF
	 yjf1+cTt3NR448i25d+HSUkyG7vcUqCrjd2RzAmJWY+NeR/LpiPJZ9Oy5bbPgzmdBC
	 nAgPaLny7GGpOQOzRA49lHZAKlXR/0XaFcb2uOSK+fxJYWII7LDLTQmvfluOrBFyep
	 ehcvxSHx3Q7Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6807BCDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169804489641.1800.6334882884460733935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee14535e6ef6e5d32a87bb9a9117ea4c8d6fc48b359367a189c24fdb9bb4dead
Date: Mon, 23 Oct 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698044896
