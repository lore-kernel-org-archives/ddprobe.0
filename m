Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D06B1C03
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 04:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3FDWMl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F22C433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 04:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697344028;
	bh=/XN8ElDSad3kGdimywkDRa/B4vvNWlfX9CF/nIfGoWg=;
	h=To:Subject:From:Date:From;
	b=V3FDWMl+zAy/yNNkSeXOicE2WwtMHo/LFIbC9Nzc4O3mykkIV9AWO1CBVG5b6qFUZ
	 dUxVFmsR0X4mB4rF/Z2oZszhRttc6bawAw9TCZ+MXtYcdewFYN1W6oVDqzuhv52mJe
	 vwVkWIyYmMlvM2apaeBPqKiLPTrz5GfVfi9BIN3qPI/aSX1diO9tZhEF8BFKUxbb5l
	 WQMKjGooO09grC5UxqVbJoiixks0kjtk3k+8F5aFia25S1wSHdujg+Vq85Lv+0r+Ex
	 IBXmJPs6KbBmorzQJV8ngLtDOmpGIQOc9/SP8ZCRxyxLBb+SuAAvrVGvftOYw3vqH0
	 uaNi1yQkQyECw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCCBCDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 04:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169734402876.10408.674990583919403006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fecf97165fe9b046e9e4d8fcbd7976441bd44576f3044e2a72832842edb560
Date: Sun, 15 Oct 2023 04:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697344028
