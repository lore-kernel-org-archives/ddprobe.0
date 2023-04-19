Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A2615A8
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 01:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8631C4339B
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 01:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681869245;
	bh=7fs+P2iFNk8U9G0/WPO6f8KMD4bQXAA9ueQAVcy7Gb4=;
	h=To:Subject:From:Date:From;
	b=lxt7tbwYJMFlM7nqmTRkDQ3n/N1JmuH+cV9+F/DHbTAsMCFb92Kx2ZjZtVamszDpa
	 +GQBT3nxeoKPhCCXSJyrRyBWx1P8VTKm6lP3hsA56oyESQutGlb2LdYsgMjVCZPnuc
	 JNZkMWob8IUsrixpX5hwHYUzxP0sxffTzpxf15R1OPeDoeQ5jxI3h1b9p80QfuakV5
	 8cFspvVGcKW5wwxOLEKsZXT2pr8N07modwbba3MfMLP+QEjkPVvD88BqjVIPjxiD47
	 NSaJB+3vjVhE7X891QP7gBcmhCiBpmGuUF4DVasIm/RRms/nUQLJ/CKmB/1L87HZgx
	 u5R2fHfyDAhAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC66AC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 01:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168186924576.7988.11431364832769934319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60c1bb5f0c583f6893db97343e0b50a9dbfd570686d4bf9d6b6e594a469ea8c
Date: Wed, 19 Apr 2023 01:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681869245
