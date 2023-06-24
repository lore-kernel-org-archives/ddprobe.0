Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6560D63A5
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 16:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD410C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687622588;
	bh=Y+UO9vjoqsr76PwfUEJi5bII5t3Iwge8HczY5ODjCLw=;
	h=To:Subject:From:Date:From;
	b=fyzsx7T7GO7rZ0CCMbtv10dnJqUyUfddwTh+1Zl1WrHuZeyCOo1VCCm9PHvLjHTny
	 tmhzNXpt8x64xJ3WF8J/Q+s1RxkkUSLginE83TR2REBCVH2Xh28coGIRJSnedMwwxa
	 /QU2N+1Y3XAzOUVBIPmH7vriaK7ypRagMX+Tsim8eiRA822Uxa2/Zm+h6ocN6k7OwK
	 DxNqt8GFcicLr2Y4Mvl/vwvkKV80isYmWoJT2juwhoIvHxmTWsBggb13pRm9MZTmCf
	 NZur9JKojD7Bt38PUDhQ/nZCRVe7e/d3+EM43aZSUoPXUk5MG3OSP1LEuLQ+QmUKev
	 IuUWsXUBd12Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF715EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 16:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168762258871.31211.3316202097804114826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aceb91f950fd3b1def4a0776b14a354e687668c944e68659450cae83fc793948
Date: Sat, 24 Jun 2023 16:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687622588
