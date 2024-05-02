Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C751BC2F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714690343; cv=none; b=L7SmVF1So1JJzRtq3LNRB2oNtgZGYjvf1d5gusdgQDIoj1Iw4ydIVbpzyn9/q+9B9ox9fTZ9SJXLRpimvcIduF+fGEZNjTUI/NaQNQZACmlkvA/DvEaOLWIq+eM1n2hrC4Imhc8MFnYEucCE22a3dKC51eRlNDCfXPMtTb7A0x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714690343; c=relaxed/simple;
	bh=D3g0yz+hu08N8mY29IIVOY5WHJh+T7rNAiF6xwR/4BM=;
	h=To:Subject:From:Message-Id:Date; b=VIr9BG6kuKusnTt6pjYoGCNfAI/aHqhBvErAQ+0Gp3MZy7wAZpbUHX/OWnJPmWEGEcmLX7VDpxd4/uCDzipKOQieU+L+Yhp49Tsyfc/8ATaD0cLqZd3NymZP+fgEja7Am2fb70DmRSePPKIkopMdPiJG7C04WEoSh1fB85OliMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeRiSI/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeRiSI/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9453C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714690342;
	bh=D3g0yz+hu08N8mY29IIVOY5WHJh+T7rNAiF6xwR/4BM=;
	h=To:Subject:From:Date:From;
	b=NeRiSI/dWlIkkxh8EcZtSe8xYsJxPDmREW/m7Ds/qePVEqiii7eSYd8/rqO5Vu8Ow
	 x39QGSrn/keeQJF5OuX73h83Uhpgd8tj+lmnzQOwZ4v/VPGlj5JzptO2t9p1wegpA1
	 jHe6Q2XV12Dy+Jeuj51hhAK2rdLL9T/Yww8Seca5dWSTKzHLN+HEYcPPR4WwnSbjUz
	 cr0lZlZvlz/RFn91+sZrIHu8AGaUUZLIH6WqXG/JS62c5hLA+kQI9rdotqREE0kCkT
	 RdYgsLX4xn8sqJr1iU69Rkf7EyMQJVghr1gdmjj4suqva3/aEhVSFxwqwjvYoSjjaH
	 p4+/foOpKYMnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D6EC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171469034280.5189.49621972038757600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e05d84f4cf4f183cdff0faea5f26954b50664c81efdaed303fa84dc3c512b6fd
Date: Thu, 02 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714690342
