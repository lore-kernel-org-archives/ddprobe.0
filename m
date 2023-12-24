Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F42110E1
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq3Q8FPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812A1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703398696;
	bh=vJWdBnisu3MqklUZznF3tqrEEYZKMn1TS/a37O81Ngk=;
	h=To:Subject:From:Date:From;
	b=hq3Q8FPmNIHxctFceXCCfSgUbaDCg8c4ahatVapSZ0cT5+LrFxRQdQGe7SfovSWol
	 ZjOt9Y2lD6gwSTdcBnXvSbeseugEZj3km6bu850xsg15A12Gi0E21sB90GY0xT8/Zs
	 MRP3lmEwZbqKJAb6nlDazJA1xa/BeyJPlNXFN0ZhGSHpIJQ8hVtb97rPUST4kM9KKZ
	 2haSXS3X7w4x2n3kpn3SJXjOa2D4Mw1UJmo0oJN/FGhDjG1jXlNBFc0Jp8SfEvx4lb
	 gFMVdURKD6hLcHJrEIoylutyLEddL0DX7J94MjL1+14ihetleMvj6ajhFXgwjb8hVJ
	 FwSUhJaWSkHFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D22C46CD3
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170339869640.30789.12128378471619353724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09f739d89d8767746f7c3191276ab2dc4f49664d615db26cb07c04f917f3d48
Date: Sun, 24 Dec 2023 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703398696
