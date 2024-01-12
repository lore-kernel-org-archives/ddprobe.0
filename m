Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B6F14F8C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bjys5QV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83FFC43394
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705084696;
	bh=5crHhlAiIfIfW6gICk8oqx3GN3x2exy5iO/HGMicSVw=;
	h=To:Subject:From:Date:From;
	b=Bjys5QV9IG+mvynBM6sf0MSsv9/ve/Ygmxf0RI5AG1+h3rwP7Wt/gZzehpkMPjjbp
	 vaHyR1KEaNx7DPvuTqiU1mVfrkIb/TFBZpCukn9cBIcQ4ZB6/Po3kQWgI5WPdzVPxZ
	 Y03yLE9tFvGEETIwpUMlxzybfocca3xB7tyy809DJFcHZKv6DVtHgPAlW8InVuAdQJ
	 WOJXuDvBbB0dCijSakkxdY7qS9omo7WkTVo8L3u/roaNHHmnmfh4Dww09Xb+R2P8Y5
	 vMrAHy9lpOBXJGx5s7uLU5kBrWcqYvfysR/KPQtksyLTGiqu903NvUlyv8RjYU1O9G
	 YQ/TBC3eHvicg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB98C4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170508469640.13541.12331102806020473706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b73895ee8a3d26af2f022a86451bbcf476f9523c3760876211be8b79b3879e8
Date: Fri, 12 Jan 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705084696
