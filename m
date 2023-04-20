Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D4128F6
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 07:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CCDC4339B
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 07:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681975565;
	bh=YwsXsLwQKEKIjPisx3jRToIPh8zx25NE3//1A2EbAuw=;
	h=To:Subject:From:Date:From;
	b=DwlCxPTAqt3FBzay5d93iChaPPUQQ8KRjYICXXDqTvC4sM4y7jEYSmpZg0+/d9smQ
	 In83762S6yoBMZXyj3han1CyXN1fRZRI7IjcOa9xU23pt0QRkwpE7q0pLYnptSxDm4
	 RFd1UrVsTRp1jCgvoCVGHhzuynLyymxujN8VnBgKloLCUUPnskpKaksweo86y2nPuo
	 LHZU2Wc/3cp0Lj/o3KHsZLaJhBWYUp9Bj8KjCcgc/sDtThv7y95XekRXXbOfhYH/wd
	 4sq48lqqNrCy6hYE9sO3XA5fBNKabp5n5Df/YR5C+NnC87oVLq3syWqg1zJ7m5A8kZ
	 XZijvKL/GKzlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA081C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 07:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168197556575.30194.17378844988605540535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bcd9e0058b046933d9aaf1eda3805712ef4c18e4269f5d9c10c0d61ec119c4
Date: Thu, 20 Apr 2023 07:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681975565
