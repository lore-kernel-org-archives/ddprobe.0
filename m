Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50433220
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B87CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668974454;
	bh=FnE7ZgIip4YETBwQ47/5u5yhuK3U7cu1+BOrFmYODPE=;
	h=To:Subject:From:Date:From;
	b=HaDebBBnHagDRtnmnmEFBHvOgoNw/5PjagXkOef3TGyriDpx+w2XeZlc+rWT4WJ/M
	 ysg3wmXA+mVuUMNzGm7MkrVvKky7SrY1SQlgNY63SjUdwiatz+PN/UfLFCS14IFB9o
	 2pYbEiK3M0umLgDO5ho1h8KTO4Fo6Sb8J08ucI7BSGsadpTm7vQ1NDXfcxt2B0db/A
	 XYEl6REHOaHH9jDP+z7oGfdvNdNJD3AjPyYF433qgoDbgwBA3UiX2iGwydYSuZrJ8C
	 4LmBGyGSgpQNt+n0Hfnof9qkJKT17KPc8zQO2642l5yTltxxouYeZNTBlPXcwY0+vY
	 FAIOx6tQ3lf8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EBEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897445431.13085.12744247351988384857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f341c47caeb4eeffa7c4419988cdf35f6f287421afdf5dc6fd14caeaae1fb53a
Date: Sun, 20 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668974454
