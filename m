Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F9FEA1
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 04:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE08C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 04:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680929465;
	bh=kV3fGOrspXoIy27cTo9njRGr5IW4VS6Jl2Vp1yzMwok=;
	h=To:Subject:From:Date:From;
	b=YBR9dji3d1Bij9y9IvzlfPPuidGaXkVxJHjpaB8J7O0htm63SsRj+weWlKN2YQB0P
	 dnznumoq9jlcvOMcTB5yQC8JZ9feiskWwZNK/oWnIOt06dpeh/d87DVmwnxlFOdaGO
	 q/s6Fu9G5IN2UQeMSM6mfRtb0jVHTD6WF57mf7zsvYpOFTaIS1XYd2xn+aISwqRyPC
	 ObimFyj/S1TsFhl/WnX0CvzAKcO8qI7ysfU3hlbqS0yLbMP+o7vAaa5KJFnPgelywy
	 paXaLze6Qn0HXqYd16mBKWJE3cH8jCizKa9fGxSHKVn/L8CTkWL7Q/wNqDJXy1Y/6r
	 rzA8sXrOAQZ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C90C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 04:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168092946574.19822.6985167107989698074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8193306b6f69e9379c2755fa56c04c661b48b4db69104c7762c1b859a77dd3fd
Date: Sat, 08 Apr 2023 04:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680929465
