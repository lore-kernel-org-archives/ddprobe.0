Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD75E5A88
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69866C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664564453;
	bh=ZCelGzv7BEZBg1u6ftOGCgbIAAyFqiIaFkg2MU5sg+E=;
	h=To:Subject:From:Date:From;
	b=qRnNmn/GXSrzYTL4CD3+S+YD7cJs7HPYSHqzOTbVNbRnEuDwIOUicZ9dyfrM/25H6
	 dJSsbZqU4U9HA7VXizubScgWHC5Xpoiu5eLZqQnnox4fK2br621lYYgC0cUZd1F2HC
	 kGRWS+Vtod9y51A1e91pPtJK/bUHYIr2AyuMNWmEy1r4hr+i6iu1CvCzvJfp93z043
	 UAN6TCvXiSGmN2nB6B9VfrRlj82qMe/N2gkjpSYUAaJCUXXrhMbwHEx03TseM8hcoR
	 5hz0rJABCxzWUQcZt9EnaAbQYWs3o/30qCSFZDr17Zg289EoDIHfJ1zro/xD61N8ds
	 mfbvWg7xVNquw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54705C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456445333.32112.16273034396682991503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a128e5dccd58d965656c505b40bce7a6e41ff7e9ae800f2e3f4693854c47b2dc
Date: Fri, 30 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664564453
