Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF132573
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9193EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671634887;
	bh=/2mRAOPm5PemQFFciDIL8UeCdhFPXElpdd13DAV2eWY=;
	h=To:Subject:From:Date:From;
	b=PZFpr4eBtQdZ2zpkBOb1DtFEgnBeF2xDYcpXuc4MSO6mPpoFE8uS1dAeqQEX/fPJX
	 fyn8tB5507sJ6kfBrxx7M0GD8G/GuJfTe8SZ3mWP4fbqNjpiTLPcKW5cUUsot30PDM
	 7F3x+DP0nR8H/MMkoP8Q40O8ynTfdWQQJshsBS2nuwq8GP1LH/ty7quQ5UePCd3kNH
	 hm5oFuxi6GEBOgbAhHpyeuIRa4z4+YLOzdM/+ROR8rE1Q4vYkLKheh1uhcqCqt7+n4
	 bwWHXZjGKq5yQA1l1L8x26fZPrSCthxRFqs+5o7gUOjNWWk+UIm0Y4iyqmvoKiDQMS
	 5RxpNF+9TOaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79279C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167163488748.26512.13775627065605556122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd96c1a6405edbade741e0949ad655330fae6191b3b282cbaeb98e1a3915db82
Date: Wed, 21 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671634887
