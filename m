Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C738663D1
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C1FC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671402087;
	bh=xLVtDLZDuvdduUau8QRO4ADmZiJhuUCuz9zt4RxjrL0=;
	h=To:Subject:From:Date:From;
	b=oLaxJRPRYS6+ZbiqWheGmOSsTr31rmw11uFd3Adm5VGOmj+RkCEACDkU0ZXOGJvGd
	 tF0aYqxdthf1T+eWjZ7YdhIVzLA13PHrF/oq4L7Fvlj3JokZeeVAevCQUgDxzA/8s+
	 Gsau5cap9PJy8GIEVPw8qY8X0nIkWVAeCbFOkp6eUcLZ97U7l0rapumnBtE+qDGcRu
	 v0+l2ATvwEXRLgpp4YJuU2QiqD1IEhA9Erb2M/JZywjWx9M8gQ1rlQ1E22IC73rmk9
	 m3AtOA/NE8meJpMDv/DbxiQORXmmCVab+kAj98NKuckDT5rsAIecuX2b3WDcAoBU+n
	 FzSzojOoZrR+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA8CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140208738.18035.13356177298138882269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8aaf241a993b184ad304551636a64946d53f19e9a5c1b455378333993797153
Date: Sun, 18 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671402087
