Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6294C72
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 61987C433B5
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666114853;
	bh=U6HHiEFVLyStxiIH/JwhZO4/i/vRyPtpCPUqY/PRGVQ=;
	h=To:Subject:From:Date:From;
	b=GhvcmlvHQKXPpKmDfCw2IW6ODpU2Av2f9RoUSLcgakrl+XRsBc6+uc8Z8lXHMifEf
	 Rh0EDWUBTSg4wMUG9zrP8pJmA48ZB0oKhaWXw/aG1QZgXR+8CiIqKSStFt1cziWwuY
	 0NxZ2pRFbcsZ7JIefpojOXkMb+FMPGwMcuOnIc6SYLd1RMSctlTBaT9glPj0leRHES
	 R7rOKRHcedYKUJ+MRkZlRxYu/MyxchR1JFJ8YDZ0gDS5Qn9zmY8K2TSMgiXrKCmY3W
	 EFSW2vIxJPdfLWpnZHop5ylOe5gYPFdKqDSgEBgt3wmXeIJdF3A8lixQIUB6WPnUzq
	 q0aIfvOK7MJCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F36EC43219
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166611485331.13051.2275534223290719303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db4b2af7278746f8ce48c1437f129c234ed2c613aa303b01a088bdc11816df2
Date: Tue, 18 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666114853
