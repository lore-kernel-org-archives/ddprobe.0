Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029DE22329
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 20:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F637fD6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83FCFC433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699562297;
	bh=GyTSWESBAzkwT0JD6f8T2VUnYw2rO4DGwYCFfAzkmwk=;
	h=To:Subject:From:Date:From;
	b=F637fD6DVshQ8LSkwJGoelHiKNC3icnqZF/L0svijrMHGWAV/2fu3HhiRSQo3uMZz
	 Hv0utR74+5AgPHet1s+2hOWfpFjCqotr8uAj072ejVfLaOooerYi3ByXyen/J7P3K4
	 mSqlAYwjeHjD6Nvf7XdwjR8k0nP1zj1XzXshOjQ4Fcj8g8aMgPOHTzZ1swqbq4iECX
	 ncpGhnIdxOJL3spk/xCCYxjoiT/I5592FYaHxYMuRtdELpGqEumQKsy3imTl91yLTi
	 Zq0/2spieqLjnIoIyR9l5PQBszGbps2NyJVfCfJoVz0W6gvKghyKUbedwiRIsBsyGX
	 e6epijefrciVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E79EC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169956229637.20305.15108377049317649790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92b8352883cc88079f136b54080c1ea7d077b3c01b300a1329878984db667b71
Date: Thu, 09 Nov 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699562296
