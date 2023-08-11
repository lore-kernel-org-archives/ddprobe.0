Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680987F1
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 02:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE57EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 02:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691719988;
	bh=WzwQZbAUYxwsUwE09xj+3w6Oz0tPu8pI2vYAgQ8hRh4=;
	h=To:Subject:From:Date:From;
	b=GMiQC3tTuUkMI1tlODVGZDotRPq+VxYTq5IGD7kYthg3/bhSVW5yEK1XqndQhGp8f
	 aYbfVRacTntxxSwcYsQ6CTWGe9hXz1/yEOPztLoehDj25vgfax2XPFiPKex52+MRjE
	 Ykqpl/W+036whU5Va7lJwFrruuvm2vLO8bewTkZJ3Qu36G4PooJVt9C22MphovZ4Of
	 MvyhgAayz0hp4xwYmnOtPbEV/lD0QnQdhYD5MQclK2XDPGvwB4wmCTnm4wJ0bxFpLy
	 LPgTjtpCwJsbbhhQ6wmpxHZPPTJ2Y3hlL8JZ4ANKFckQCjtUtV/l/2u9ARHTkAGS5e
	 6fMAdC2W/qsjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ABCC001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 02:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169171998868.22175.11904579653800230547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5274f48c48b03acaf4721985a8a6445e6878d6662ec2a8fc79b83e3f75074c9
Date: Fri, 11 Aug 2023 02:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691719988
