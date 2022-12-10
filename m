Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D352CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B539C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670709087;
	bh=7FDYMTEo97EZ+LGyW3cb5oaYWoLHx/ggdkYg5mfOPCA=;
	h=To:Subject:From:Date:From;
	b=dehCQIqNki7p+ljWhk34UARnFoQrSmUgD8ATKvZbLRMQhqwz0dbQqBAEpdTJmrBai
	 86sJlybzXTP+wES8NftUBHD4XY+brSdGF2EUaVuztk6PtQecLfabE9E96gebibiGR3
	 rIy9b/jEFo0o+IKIUoXHAGsEtFd0tjCukq4iAR9i1ESrR2Tkjad0GlVVLKZKGU3qiU
	 A6OCuHiK5+Loe6NV6EMPZ4f8f6O+/IO+KB5N4ggpExw9cgq3+R/NVqbem/ksESZtDy
	 9+WgkyiB8uCOi6lFP5rB+o/3EZuvj1OcaPPuZxKuqXLiZLxHg0c1rGhfQjtr2ZzADU
	 Rk/FDbs4OOTCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6345CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070908739.20299.18319875721156058202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e269e2f30866dc5c0a3671fb1afb9652f2f662449b4be8fe3a3d4db11a352726
Date: Sat, 10 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670709087
