Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBCA2EC3F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 20:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5D5C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 20:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686776228;
	bh=0WHj1QwK3G/i9E7DPbtcaVlDgtq7eQrg00ITpQlt1jo=;
	h=To:Subject:From:Date:From;
	b=fv3sIwWL+mKT7lwHGP+MUa+cNBzSumskO4Y3fQm1AQUakn+KIh46R58PhbOXgcYt6
	 Ui2rspMJxpGpcXir4SNg/RRzzPoAE5pcuHlt2GwtemWGLkaqGagetAzGEJ20FkPndb
	 hyfP6LhJ6AGfPxzo0AvrgHrSpnVVSHiWahomlISmJCVQ8t57L25vlGeAfuPM7gwPgX
	 Iw+GCSvhxGReAbDqDp2g/QOucWb4zGrBp0hcnneuK9SBTxOFipp2GfM3Kb/d8ZJ1OZ
	 /NAuWv0nJnFHzR6jXkkeY6Lo7eX4kNBueQ/VTw7p/S3sd0A2XbUApN1blUjEAJKejJ
	 uVK+dXt51Uc4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14E6EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 20:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168677622871.20978.7208844388849797374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7adfdd93f3d77938a64d415038c7b1bec4d2142104f6c986aecaefbb3b65aa02
Date: Wed, 14 Jun 2023 20:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686776228
