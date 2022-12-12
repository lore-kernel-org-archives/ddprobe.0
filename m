Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07CF7B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C228C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670830287;
	bh=xyeWctJtLNAeqeDEa5fGQ07/Jb+SDmzzPVG4Rc/hUUU=;
	h=To:Subject:From:Date:From;
	b=RDPkYVeWRA3xjtmZDO0GCcETtIngA1DErGAuQk96gEKWZQ9NRNwEdgenaVEqkQb5E
	 gnQ5RslP2Io15apMVt4z7v+NIqnYXZxOKHr6FK9qh8+n/bJ6PMigNIHlyxfYpS84UU
	 pspKw6bbIYGFjx5OIvrqGrsTWshmrpLN6C5HQ3iMFm6h1GrqzUnIFO8T1jWoxALfA+
	 L6gdKF9o/z39H1HQzm4EEAgvuy1t9CGKpSt5V98An5hX2uOWSLc0VVFEZJtWpO57+J
	 cB5UJd0sKhtwkfLk+54UrRkMy3VG+iMtiwI4nXqiGXDMnR/3VABIfLifEIt27mCrM6
	 dmVb6lbHHoQig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E7CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083028740.13618.14856154322357360470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebf408c1935a00c3ff1bfe005fed0cefd64925247a39382d7ecdf5877632ad8
Date: Mon, 12 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670830287
