Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7633E9446
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 18:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 24858C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 18:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676657046;
	bh=gd/FcFVZ4HMcE1aSDyaf6k5Mcc0A+sQEX/bvsHQSCHc=;
	h=To:Subject:From:Date:From;
	b=p7iFl0Ie5FLgq77pjC6gJq0U5ojdRFQ1yMiZOK24Bi+RvAOCQQ41ufMmL+VxBIT4s
	 ApwHRVZolFz2N78wECZz6RGxxLahnHP6mQOLIOY1T4zTzUkOrirkTDCbzpQpyYpYUd
	 RMnz7AXn4sHn7sFMKSUiAHD3ys5bqj5pLSVZ0L6eMZOtJ4feFKFUo+MjOQD/a71eSW
	 fTo9AwvC9TgVLjoa4bgLEZEm7ufTZy7RG+t5+P+NguMVO+ymCUQr9+ox3xu3TS6KgF
	 qGkCze41cBWXb7Xci7INPY1AuLPz9xcoZj58ON05+tuFx3N1Xby2WsmBg+4Q0iv6PH
	 No4nZNad/1yLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4141C05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 18:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167665704579.8796.5557371689809214265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1bd22197031bb2e9a8fbbf485ae4063ce11e5cb5b766fef91fbbaef6eb899f
Date: Fri, 17 Feb 2023 18:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676657045
