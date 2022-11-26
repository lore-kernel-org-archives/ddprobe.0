Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6814848C
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86E60C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669420854;
	bh=CuLExtDDQIFYGvte6M2HW1vpS8RrSbdLjRrTIk+LMQ4=;
	h=To:Subject:From:Date:From;
	b=pxYNX1H9FyekhBYypmg3l75f3JUNV2fodWxiXj0AibiLORKHaRKQFs3Z2Fqs72gzh
	 XxDztOWhkjSxKKGS/9Ewt1r8clLE8XZgK1Ur8U8LZ9nAQUuXuoUDQT03lC6gv68L/N
	 MneXFBWDxMO5Gm33DIzCXTInTE+JqoiC85aWySGH5UV9Hc6wB7B4NZ+ajg5fpPw3zk
	 6ypUY2f3Vvq8ZIPumxuDZ6brSq/3Ss740kLTGartUKBsspnCUXLYZpKw4W4lXYYwWN
	 xHugklXbg1vgwHEnUW9TYA+JzZiSE2FlLe0ve3zzHz0Q8XO93QYrjlXkgHMjsl6n1L
	 qkB23IqppkcRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F9DC43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942085438.18391.3368563643930966216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5013c6b3a505e33f876dd9fe34c6c0351c73a5d339cbcad80c2dba1e8f01d7
Date: Sat, 26 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669420854
