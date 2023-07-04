Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED85539F
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2762C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688464568;
	bh=DNwBlgmngudsWazbAn5ocgWudS/uWJzU240VJrBh/20=;
	h=To:Subject:From:Date:From;
	b=oP/P+9MW1u7kKzfMeLUduPdsOJwbY1YRIuBamf//MDi6vl93UMoC4wWjdbDJL3IEz
	 /HIorXBlMJj5LIATMDwHBNn4wKq/L/wI9RWVQwyHNmjz2/jxOo6hLskHODUtTaZ446
	 mvefaiJM4w1DQZlY5WKY++zBgS9iYdcUW0f4TnRz63/Y+iIE5Rq2KtVRoi5I2t3sBn
	 NwQXyve2Wlly+PrUuRySfIIqbKh0Z4QotBtxZsE6w6FTYRNwevup2sxqXBSFonNvap
	 YMtox/S6LLWaB5jbbpvqGegMk5IaEHXbtdHuhPa9gYSIYTzCJYjPUGMBAo3b+P+4Jq
	 44B0uzRjG/Jhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6789EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168846456867.7018.17514275764254828870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ee668a00c2d7fb84d1f28fbf1f8109837d7c6edc6b872944ac0ae4331cf26a
Date: Tue, 04 Jul 2023 09:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688464568
