Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121B43C24
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9oU3MAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E10C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703651896;
	bh=OYtJqjHir12sfX19l5AgSDoNHoWpsoFz0Dw6MjKFCDw=;
	h=To:Subject:From:Date:From;
	b=I9oU3MAoy0luSSe+r+uukz+fyD+Z7xm1f9fYpQes4GEzSWIcsV+ixaCfP1s7eWa8J
	 q5aNc0owSaLUKFKGkGkMrGIB3q8kidb5G2TV6iw3S/7/TjIGFzNU4siA5cn655b2eW
	 di6szO4k6NFKCIG1E2dKybKlevEgCcdlc7+q9EudBE9ukK4B+E796UxGPU17I6nCkX
	 CjyvUOt18kYbAiN8SdjyzRA+IB3evRG6145MrMEL2WB1R6PaABXPffmFM67VDjjZu/
	 09A01HPiCgH9+4b3LyiFfiORxKhcUxXElqnsofSyenSuabBBInUdnzJfXrPj9Ot3ge
	 v1i8gfDXN0JiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66515C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170365189641.28995.1031142019581394583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b9954b9df2b011fe1433f517aab667a6e4d96616ba404be07a513f0d2a1d4e
Date: Wed, 27 Dec 2023 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703651896
