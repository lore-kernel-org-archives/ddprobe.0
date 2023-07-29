Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8722C7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 20:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E249C433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 20:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690660929;
	bh=mMsyHaJ+eOwhVl22JFL4pXuSPxq97sNXKWxrlbhCXyc=;
	h=To:Subject:From:Date:From;
	b=J/6SvHA+7z/L5QZd5aSNTjsb6aVFRvCU+Coj/twewSdVoa5c0vUQ2XpV+R0bbYHyy
	 423cKLnWJBJ8n4di33cNBMCOzXaCLEO7fYEJL1iBBW1SDQ6dXAULPoAC2K9SLo2f5L
	 XWtdLKV+X/BkuxoVM/8xo+cRjafz4AZnqn2ZOK23/GgV/K40z8x2+V7QbV9e/lQxK4
	 8G0CO22Df6y6+zbc/aqDp72UZWoHxrcvwRBpmTjGqApGlJJd+tZy8P3/8UucTar8JL
	 vsoR3Wtn2GrmmyRbP87tVaWT9Fk4ALUw+jvTPKdQ4T82LAMREKSs2vLm6jvEYWH/Y8
	 QDOE86fQRRO6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB223C0015E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 20:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169066092883.30835.15672924456185176594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ea7ba718e88a4913d2928dd93ad6ecf9248a262a86e83d62a28b96b66b6c1a
Date: Sat, 29 Jul 2023 20:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690660928
