Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A7C8F6F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703A1C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665572453;
	bh=4cOXwZf8V8iGUSO1WSgsY+WO1kc3s8qYhLDSDOO2S34=;
	h=To:Subject:From:Date:From;
	b=qOQ4BbcJvTvsr8fQ5NYFgrYFJjApDhJDxSF3/hroBFPbzF5zNXo8LxRjwr0/uUCH0
	 xRWURsnmfo5OKqs+MWo+M9gub54DBVLWMyYsOKafro+1+IjpGLe/JzqMKGi24bCnBw
	 ZJA5vQyX+MeUt1s46lNitiSGvtC0v6PnFgBsHSQ5AAe3XVH4ds36+Su0Hsqu4YcxGM
	 2/s7Lf6ygfGINHPHj9p+CUjpxg2ZYeEqSvUdDosLJjfaWthriR/3aCs6UdqEP9EfJl
	 8OBijVRSIU/c/1s8eHdd39w/EvWHihUKwRTOEccmHUBjv1ta40hP6DhLpzhwqbxMb7
	 qvMSeGniYT5Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AACC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166557245332.3120.9627920894275885993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84abd8f95c8134048783ceea6700433c56d198ef7afa9a2e8d574ffd38c8b75
Date: Wed, 12 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665572453
