Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD886FD0
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 14:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D230C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 14:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680790086;
	bh=LwJPInWiBDFGsV8NAqxRkINq8Ea7ERKxrkaWmuhOxwE=;
	h=To:Subject:From:Date:From;
	b=DyYPod+yMP3io2A8fMOIeTjhQtFtCZCTe2vZ+GPtKZvqqaq5RxlwnNV+5tRiWklbV
	 TE5hs3dsigXTT6phmUbR3tBYqRZBI4PTrZ86/cnRSk4dpnzwCMww+IpH2/VOATc0gN
	 C3DfG+71sg+WU8hYkzw8geaL6wJpmw5Q2b2bRuJP4Ay6CVQLybdUhDNjuO0PJfg7DY
	 uOfwQkOx6RFQ9AxznyWvHJZ4BvvONd5MLdE9ZuoqNsO3Bof+6+lWuv1gJaBEnfkhel
	 WfozCzez8JFmp9DIb7pr//KIOYYg5oZH0h3aSqWn7tN4WgExjlCOl0JI4yhZcWWGDD
	 NDWFwCZ2Axe0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF629C7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 14:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168079008596.9837.13833090635891107253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597ed2b7356b036871b0401f8b5bcb661cb03ed1b70b0791f6b6e8b6d43de1f0
Date: Thu, 06 Apr 2023 14:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680790085
