Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1CB1362
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD80C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668734454;
	bh=xHUgbiBUJj8/CthV4FpnjZDouByj/TPsxqMERaL/EzE=;
	h=To:Subject:From:Date:From;
	b=gcdIm7oHMCZGM0OGna8sPb2ptr3K527mfgEE/MRuJswG3BPkdY06S0B2+hcywUzDM
	 raQor2rfzS3G41gttqe+xjWwwcnIwjauxQwdhjQssqnkF9xUaZiSJQ6zhHmQn7Bs35
	 RvtRpqxt0coQHpq6eYBYWl5iEAhK9Y+QxUtoYNieuceQOvqh413NqUAt4EcCBlW/xs
	 FdxByre/l5WajsZnQrc/c0hg5Gfr1Ugdm0xqjihA7wj5CnLo5INFRHyUi7XH4BeN3y
	 ZcfrbwjojtyWRupZYiYH3zZrPYgbqGxMGMPBOEbR7ICmVuYgYGoX2YupTF6s/akLT+
	 65mZOGcD9ZFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DABC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873445433.9882.4960102805145313033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5969b4a0329132e8fa96c20ee8dec893fac5b8442e2e2bd21e0e1ffab8775e
Date: Fri, 18 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668734454
