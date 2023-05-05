Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489FABE73
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 17:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF4ECC433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 17:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683308826;
	bh=JudiskiC2AAfQSH16dO8kwysm2tI2JZz9XEWVJ9v7uw=;
	h=To:Subject:From:Date:From;
	b=Gml6b4KH0l4AmNQDXOfuPqqqaMLehxzpq+8XVsh5oJi9vx7t1nC6T0OH9vEik+8T/
	 hRDmzb2j65jdY3mC/Y3tjtTfawV+YGD+Tru/jlkocqrPyuKdWoZxKkIn2b9srUOs3A
	 VadbUdMIRQRDs2+leOCmsnA65P5eqcpzNidFppMFCJipcKMwZawp3N3KqT8ifbc2/f
	 ypSrKYWooM7PU6LpysQ6heCBhyIBvhxYgv386d072jCobHrjPUwae1hhjzJrh0TAS4
	 8jpEarPoH4kLETP0O7ljkEpH34V/HPsf5tly2Gd2XF1zvZn77JNy17HNnOQmO8XNiP
	 ULfNx3ghpJvwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE57DC77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 17:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168330882576.3538.15794741651386591937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9630837d57b364daa8e02e596bd78646633c923ec05db89327ca4b36858decb
Date: Fri, 05 May 2023 17:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683308825
