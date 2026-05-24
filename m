Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE74145FE0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779623554; cv=none; b=UEBQpXjd5Se6J770FWQXGEsbZEipz0iObTV0VLpBC+UwxZ291k+2325BHz2cx27PrpwT/GQP6QsSX4IM2NIc72lyLWfLRPxFLgu0bwAJ9lvrZkP10jtUSPsiTAJ1Wc+NcAcMldPWEovNQ5+YooqEFo+nieuJ4b+Dz9vnkhq61XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779623554; c=relaxed/simple;
	bh=dJIgb98tKsMLUvBFU0B2ek7MlACPoCQO/bvd9DED6sg=;
	h=To:Subject:From:Message-Id:Date; b=fmAQZ0lbQhQn7+0XBQ2534wQuXJXpP/n4HWYlFip/ap1vcrLit/LUe3Q9DKuvjlUHPqXtUBQ58u8uoh4imOoHyEgacIN/sq+TTs9+vGI9IcEbHjMDEJuHKi2KBycEzB9rPrjsYTDD/FsGmjVUx5U3f1vSgZfvL3TDtat9MkQwlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFAz3xcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFAz3xcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA6DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779623553;
	bh=dJIgb98tKsMLUvBFU0B2ek7MlACPoCQO/bvd9DED6sg=;
	h=To:Subject:From:Date:From;
	b=XFAz3xcEnS0aVQ9TPiFfOtd8S5NS7e8MYtWwuQm9jMXwGmKjQSEGDFdxp+RGxVblh
	 FV2z2ahzHzq9xSlPBFUhOH1JWkmXPYoDkwDG0BT/JA+AdF5T9hnw6V1z8+qrThVM+a
	 xFLnn8Fpjge8ScCdRyBLfcs3qeLRrrGxjJMKZ0/0pukk36IcY9F0TH9p5BjDp6HE2S
	 KyZRjuFQApYr1VHmq6OmV66WG/XvlDqFtDo8hnFRlWda2qTruyuX/wb0Jz7LXcmm/Z
	 kbZ5xPcUWdp9lEbAGuDO2SVm9Xms6jdWY0bt1QEB+7TQD+dz+rRMjXvMnsGiiU7qXF
	 mvs/5LTDppEGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB88BCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962355368.7923.6961052371134736053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433ef34597c179683dc07eb82ae71c15900c4c0b480bb66d6531679b7ed7af49
Date: Sun, 24 May 2026 11:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779623553
