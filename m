Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC7F5692
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA83C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671126087;
	bh=c30MyWn1WJUp1sETYeCNtcBs5AGy0uwzNBfBEwgC3dA=;
	h=To:Subject:From:Date:From;
	b=EbEO2822H0+wwtNVtj8FZ8rY95HyRtwqiQGf/gjfDlVa9Xxo9NKrA0la8T3Zk/fNi
	 vET08F+SpFozZ9P3rgZHsZIEOLZw7FZybQLGLhHRmsHlkJM81CMZeixKy7qSQR75ow
	 ZOGlTR5xQ/DvxfQ92xY6v3Bl87Ce7X47wQPyVGS0k2vp3FWxGnKNtHLvoKBSpdSBcc
	 MCJf8DpNW5siCl16DklTW5AodpmCMM/fBaVhyCSkm7JyxVntLWbok9mIvEeyPffoTd
	 xI0CJ/wl97VfGxbm9bTDLqb2a2X7WBJs20FhdaH+E+iEM7TfYjXyX5++AQ952iG/fR
	 zQGb1nfV6LsPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64557C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112608740.13243.15386146744709585619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee19790fc2261c32db838830064995dac43ce74de55b72e96cc8d7c20e6159a
Date: Thu, 15 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671126087
