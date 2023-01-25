Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337A14C83
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 21:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1017C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 21:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674682385;
	bh=XNotKw84CtF0sCdIHO9Rc90+ll719Ym23M6yY6qQLsU=;
	h=To:Subject:From:Date:From;
	b=PofPfpxjTyFzPub+s1VeEXS5OPEjPzSi224ZVelaY1Yj33uD1oRsqXTM2gvJlBvPx
	 VqM0swXrSjCEHdF3H9y7R/dRapeUBuwoezPBFHVtgXiAVEWIdX0LifW+JMowH99UYH
	 m37z5ro1T4ZVel/pzeAj8qqLu2yte5BS1HC+QxukNs+XrFZHczNsYCziBR9R7gl0/1
	 oYSUICJdnpRjw7LB5Bvx90zqFGHULLxQ6HuInCjQhFEEONJCb94xVEXOkRKGxF+u7o
	 PlhblqMVB/CFvdh2R3CAWeATqQ+r2bMZdi3nsmQC+z1OV9Q1vthQltUEGI/gwm7TMN
	 Q1AE9FZmAdnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B615AC54EED
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 21:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167468238573.8518.3249394687443437883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd666348a8068c51fccbf29df061d8513cc755d931a07d821aea432e96bb33ae
Date: Wed, 25 Jan 2023 21:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674682385
