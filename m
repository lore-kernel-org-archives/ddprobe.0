Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A6E17F5
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 12:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAQKKCIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45D9C32774
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 12:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696510568;
	bh=kz/FrN3/6as2Za7xCwpIEa/8wgNunR/r1RP+9cM78xk=;
	h=To:Subject:From:Date:From;
	b=VAQKKCIpKTIvS+K/lL+S8MWiUp/S+Ksq0pn22Wr7likd0iDnermes6hSMBnBurR3R
	 +pMw/boTQ+hCpzAs0d+/BXpDw81eC2+O8ai/G8umujH4iRkNtrbYf3tqGfnpGfjYyx
	 ay9qs35atEAbxdkZIht3AAAuLI5VEnf69VGVMLtgU/sXDC4D74co4bzz60C+6o4op/
	 +f+bVWYCM8g3MtneHy3C5jekHsTQBJXi49qvqgfFPTyjhdx6je3JpkSxelr3ktQxJ7
	 YWFaeaKzBkT3AG6CchC6SKzlWkLTmeyzQpSqTGl79R4rLOJqNSCDQClUV8zPeGmwuu
	 +cvTnEFYXBHiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C3FE9370C
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 12:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169651056874.10501.7452499491937356449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbdb984dff99e07e36a2501782ba9c2b1d3055e988a99dc526ef837182306760
Date: Thu, 05 Oct 2023 12:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696510568
