Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4171C2565
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 07:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE278C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 07:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679556545;
	bh=WAMw+RVbwNJIVgmpAjY5mJxZVA+67G3GIJjRARVmFCg=;
	h=To:Subject:From:Date:From;
	b=lQJCPS8S+KPWYwevFDuso+XjvkmgE2QQWMSg1+1PHBgUPZ11Hz/KYNXvPun6yFKQu
	 2mRlLl0ylrCYwHiiKhaxfBx5IYHswlbl8qxWnU88SJoi3RrmGMtHXlmIPlGX7eCMNY
	 ziA89fWJqRRMGs28xbHV8gnVx50OxamgxpXWcOSKtr8hb8Rt+5uzsQPOfnwHvdlInh
	 R7Wi3sNwJY6PJNLnQrp0kUSIUSRXBxC4gXVJfR15ArX/ECLhxIjjAwhTW2qXfwf33I
	 b/jSja1s0k8AWJ4HBuszdAKnL9of/q1hHofghOrvs9nrEHjQrKRWTAVBPJw2mX2UnB
	 aQvH8I8L2eeaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7ADC6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 07:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167955654577.22724.10457219660895233683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c911f652bf81e8be607f65ec8e0c86b9de7f936cae4b1ff18ff2c67006141ab
Date: Thu, 23 Mar 2023 07:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679556545
