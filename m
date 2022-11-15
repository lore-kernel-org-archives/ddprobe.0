Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E6F23C9
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EB5C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668499254;
	bh=8rNz7ies+JKAXdjLeNBPx2ZPMVDD6WM5IjvHv3wQZVk=;
	h=To:Subject:From:Date:From;
	b=X/Hm3AES+0cE1M3b9hW13Lk313DF3HwsirnJJ3y0TLb15djRS9/Tn947SAxRpxCuw
	 1/MiQvKUDpvH9UX7wWkQwJ3V1CW5uLC9zL8qkhvf5abS2MGnKDffFb1dpCIDVbJtwq
	 uSIQR1ZvC5ITR8Qqy8jXfeL9fdZlmZUgSyUPYvFvouolru3jNjm0KJlHB6ujNIE7/G
	 E6SyXOQklklVBI1tl/dwQYZXCs3156WWDVaoJ07M7PYeBu8F1wW1XN5zix43jsC0fe
	 +94oUyIrZT/NHOPMwuYVe19PFtPeAefnNcHG9477penMgWjOvSMD3mlRvxzXpnCKKu
	 e4ueXUEUpcuNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF85C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166849925436.504.9543330114288229434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71832b4319b8cabd923684741e94b6ac1346af475cbd63e6505ba5ea103e063
Date: Tue, 15 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668499254
