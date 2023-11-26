Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B65E7FD
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2Kj8tLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E92C433C8
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700960296;
	bh=ATYDY/XNMQSZEkkgr7AOB0JgJYMsnIDEg0svst3PDp8=;
	h=To:Subject:From:Date:From;
	b=Q2Kj8tLMaqzIhqXUkrFPIiUx4kOha+FMvXrY7+qcFp9jMHiJqfmPkK8JRs5ejtX64
	 ckjyd/gWkqrp48tGByzgAGO4jJR3z+zwxY0p0w3+LQP7HFmBsWX91Xon/iOcEagxYF
	 GpQvPT8TM+ap5Fgy008mrVe/xbHNBdFF2oJwKOCWpVPZZl1dqy67LFpHNHQZNtNi3P
	 4Xil1xQuR0ZQR4+7pAB9d47j+0jYgeOQTJZS5VuO1iHE78NzNwZe8M7Wt8pNRy+YYs
	 BJ+j0ab3WcVzxpLuiysoGSBSMVbr3MqOw+dZtEAIVwlFicF4l5Mc9zsrJGYwgMpxDy
	 9SBfNsdFibmuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69DFDC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170096029640.23095.15357155233586200602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ef1228c13703cff5da03e08c19e6c29c71801c176f4dc6f71617053c9704f9
Date: Sun, 26 Nov 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700960296
