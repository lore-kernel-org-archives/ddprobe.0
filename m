Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A55982AB4A
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 14:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgVqgrQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A8F0C433CD
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 14:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696517169;
	bh=0QYahhHnj3+7L/Sa808prcTDSM7GLFgat1j/NNBPWKg=;
	h=To:Subject:From:Date:From;
	b=sgVqgrQBJRDh6WBZd5vzN0O2lRLPnvJ1krD2ek4iKMS36IH+fjDmrUi795mSX7puU
	 PXF9QMpgtuIYYWvzq4hpWc72WFkf2Ycb68w0Wi4DTrqxB2Tv5T/YdcvJgnZ5wj8m0h
	 U22Mprp3bc99KB5arMOwftdrmyZt59RRkYBiRkLq7fJTvLfvzlxoUnfCY5M65fgC1C
	 QmwyacikNsmdRz+KlcHJzwmy2DCPJe2qkhTG2fc2WuPckgMotgVXGwUbibDUx5CnLt
	 ngXvIt8kTGhPqFM1I4L2GbcRY2/RUsi/mYhkKS4IoUPn2hDYBVhO5ds8+1SXxEdNsQ
	 tpi/nW1E1tczg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9C87E9270B
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 14:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169651716880.17553.9495503797521639380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506aff0720a11ee52d5ed2c3c84e48da0ece3b713e627745ce90b34bb4c656d0
Date: Thu, 05 Oct 2023 14:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696517168
