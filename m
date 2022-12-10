Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4A4813
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB5DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670692887;
	bh=zt3IQ7BWwNKRUObr2AKEVVjNiA7U/32n1OicioVxavI=;
	h=To:Subject:From:Date:From;
	b=KNbn3P18qK8RujAHG5hnssQ49vKHqA2aiv0yr+B+9lHWvUM4ThLOlDQpp9VX7O9W7
	 19uTvIragGphuHgVpof9qCs/C+UnjpuFi3XP3lx3yddh2zEmhyzaJRQqzyXvyVOgk7
	 tPS/ueolUuasXKAEDMMAtpnPciGjNjs57t0JbeZqv4SnA7PDlSJ/l4BJd4krxhbDUv
	 NbiqB/TX9A90GmCzZ5Mtpr94uBu8+IaTEeCnQGgLBv5mZs3FztoHml8QPk8i/63aH8
	 j0JvPIsLCk45eK1Xyhj7P2nc1LNycLbTRGGs0wGe2qSQ5vCnC3TD/ZHQ1Ck8UA8Vw5
	 P2KdRKHV12WGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645C5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069288739.27143.9228452762850885011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624abd68dfd084fb0124fed3d05392c05d9d804947e46951134c0438b53998b7
Date: Sat, 10 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670692887
