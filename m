Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F54675CD
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igW3MABD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A0AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702585696;
	bh=BHNBRjGCJQ2M8n7TuTywPc/AIh3GIZiRu3FtJeiZQ3Y=;
	h=To:Subject:From:Date:From;
	b=igW3MABDx/tpaJXoT9IvUjtWyy8AO+++EuMOv5bfI3IjFphX1k0zEmS3KV/qMzKHu
	 1EXdm8stM71olnb5iWz8g0TSMz6jbAGvmp1H9dKqf9+KFjESbvX9gD/U04pP4fgHKx
	 tk15P7GqnNZ1ZXmtTXBuDiZyIkecjZhXYCQFhbLXvXDROGFUtxOoxc2xtti6ddT30l
	 rtugmv98xvJntJ63jV/dRFPSpctxktZVXfV06vY5Cbi2rCFWy4X6uVIrDKSSFPYB2I
	 7wB90/lgK9fX6sZ5gtiFyT2p5JqX4fmkzWTkdArxq9xqHgh7QH2dAk3Eq6Vek89cE/
	 st022fKvvngfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F50AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170258569638.23971.13407627911832810514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a106159a0dfeab137ff9884aea129be834a7ea60fa327b0b684e08c2b937bc5e
Date: Thu, 14 Dec 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702585696
