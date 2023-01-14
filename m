Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FC57C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C6BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673677887;
	bh=gJ6z+bo4yd3XFpC1eYx624LuDi6DE6Juxf/shuIU3hs=;
	h=To:Subject:From:Date:From;
	b=AIqUVRALS54ohlTY1QnDk7BGeYpMXhwnNEDVElxV/AJAXKcFbVS0yKPCMHhCAvY6T
	 lUGpQPhKG4jNTq+6l+mq2FiXhdz8X+Q34uHP8UKfFLG69+6BrvaNCQahtTEJ3pbBhJ
	 vkGv52YcfFB/rRhTFMeHNFtOOxIhiRNXHKh2s6FRzM8wgczxqRjzsmz2JG6kqc9pfh
	 lPYYD/7lhAWYL2A+n/x5bioWEL15qe1KRDq1Q5Kqj/qTMF9jGLCMAxaIpKx/SRMomW
	 WU/GLgnlRNvkyYP60kNcZRBd6gsnTuvDFvW38rRzhGwdJD0d2Y558nO9JC59quzEWv
	 GUlN8vGiIWHyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A7B8C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367788741.6547.18351451926147262531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdea5e38335f7133e17901c88fc99bdefadc7a341633a9ab1a7180becbe89e70
Date: Sat, 14 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673677887
