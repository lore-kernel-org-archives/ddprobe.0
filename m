Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9EC210D
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DCEAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663307453;
	bh=nxNycVwhi8UrN7QceWhK+ACxwd7PKBqRHkb0/oYBvqY=;
	h=To:Subject:From:Date:From;
	b=nhDs1gGlAOtdirlsosxAz0ZEYi73SCsiDZ0BWFK73jyUhTpco2m4QaRSLx0iwxEfD
	 eLPu3XkIoZN88TsLcztostkW07BAYM/dx0M/ObHGIRChqZ3UcNdRdxaR/UUEBTM7f/
	 xTR5O5WOa/TwOq/3RQrCzJ7v0LrchQYM8PnrmdTwcCcpKZAROTBTuklBm1PuQTT+x0
	 D/p8hCoQABKqetndgtjN6YcqPjR3/hesSnxojXf7QZkXfcd3lNbQasi2/tYZ/0Bave
	 ARPve4XPv65YUTKUPSXu1N+imbGZT3ZpXQR2Z9ZFejA+HSisTI4rYi/2BvYDpirluy
	 cJ6KshQ8rQ/0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FFDCECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166330745332.5077.13586906276328093854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e0f333c6ef4a15566147e66170cf36248b741b82ffe63fb7222f492eae669c
Date: Fri, 16 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663307453
