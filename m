Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE12014A85
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpdHGml0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76801C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703884096;
	bh=ksb8GS8wCkyWBvHbE5Bwpus0VfrLXkJnCwdq+0TRLaU=;
	h=To:Subject:From:Date:From;
	b=HpdHGml0GMPf4mmaPMim5zAnbwg76JQjpuSFbacjF4kU5kyBvMQRR1BRfNU/5dF0a
	 z3UEcC4ejFNePVjtYfnfCbuFRhsx5ufTBGFpKwxRx2JD/Ptu3dV8MnQe/O1Xr/LJNc
	 7hnncOgK8S2VSkTvuNOdWTEi27lFFGdxGzj0uhNOn7ayhs2/riFk5gw6HYg+PX8kiX
	 ziEn76pr3xQ+EKKdl+AuJs4Fj1HRlATdyNUCmJaB5KBOhPm2DrJMbfIi/eh+iSHReN
	 sRG1CM7WGox2o0VCHSmB7polRWfW5q/lQGDOwYkODuRob+BqpSgRUlcJlEwJYMub+e
	 dEEJlLINK1/PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C586C4706F
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170388409637.10860.4814388883544215522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df92e12f87e36b39eb616a0540c4db5eed864f0a11931ef1a5018e2589b12b6
Date: Fri, 29 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703884096
