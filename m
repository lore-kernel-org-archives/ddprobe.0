Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FD812B76
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLVC4Kyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801DDC433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700542696;
	bh=GPO5hYK7XWybxQbZbHkSIHJ02xQd32lOGM16xFW3kIU=;
	h=To:Subject:From:Date:From;
	b=kLVC4KywbX3GMRl+Vbr8pbVZeYy/9g2U8VGo7f5CLiKr2xGwcCxT0xLRROxPUvWYy
	 g6rcHua3/w6XleVw9ZQDemwfM0K+Wt624csgP2lDp/24LjutDgPLQyCnwq6BZ5ZerC
	 56kjG04uFBPXBYEOiyLonutdzGIfGcM+asis9YFnq/GKOqYZJ9iOEa7zSV7S1SrHIY
	 lehR2fsHD52pbmtqX6+Dq+ldHSqRzCsnfaq6Pb2Irg/XK399/0toYhXgVrxSqyOYrk
	 5tiTT3mUKabmkNziQ/o7Aj+d3XXI/+1hrLF6HY01TYYFo6L08hPZKLYavVHHDxeYSG
	 lvjrhm4SQuqyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E4BC54FB9
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170054269638.8948.11438545349962443251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762e7f3a6a2d3b704523e32c53e09b413675b3862cbd6feeaa8c54328b17935e
Date: Tue, 21 Nov 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700542696
