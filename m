Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABFF15A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 02:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED616C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 02:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674785586;
	bh=ux3IJHlGh5C2flIzMIuRA1W2Si0ssoDDepADcG5SBJU=;
	h=To:Subject:From:Date:From;
	b=ej6etXyQxnK1aBbGE2ekmTjQPM2Bvl7Y3Tc+GmTIUxGRmrkYH4uSjGMAs8FHbd3Mu
	 NSCgbmyurzAho2CHJmHKomKkk1Stf4imn6JYQJ+BW4RHt78WOVhAhCcxUuW19J5f44
	 5lmNd8tD+IXPaHXV9StSUmeZ+YnOfKZeuB1zzRvaZm0PN7YxbdFSlHyNAX6leRJkbZ
	 i84FYBGMk0HaVLvxsVjVCAL9u2EuqEZ0tMsN52IT6PZzUCAQJ7xCYDHW9Zm5rw19Mc
	 2NsEDYfp3d6iWsfOPUrifEDSvHOawN+4yVG5vfo/ItG1WT/IwqpthMWNZaCOF6U8b/
	 mPDy7Bsf5Dcyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2057C05027
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 02:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167478558582.8193.12871404816297951578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cd793c1a3ea00e4623d6234f3c8a4246dd6b4c03030b62465610bbb5156276
Date: Fri, 27 Jan 2023 02:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674785585
