Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94337B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74AFAC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667078454;
	bh=MyFqCOkuBFK8BxbYl8x+xzx3bmZe6FIopyRhi/0iIps=;
	h=To:Subject:From:Date:From;
	b=WT6QJV1+Hi5uCUwQmlV220Wg/UWxchHIZ9zunGYzFJJwZbdTMISIPIL01AqQpEuCv
	 B4r6bZJZMim7QykrascaJqUoYckp4l3IdP6v4fstXJ5XECyvn6dlx1EK5tPCrLdOcb
	 4csoWHCF5iO2SJ0j57zjeUTSsyYyOahgZPPQ5QRc/wL1cGWcDe7BmworNj4EpuGgL2
	 1f9jn0CGc+mYOVUF6wAOVKBS8CCjBBz7IBKNZ/d5W7h17ShZcxv7sEicf1JENBDwEK
	 Z8wqTB49h8OQ/d2ZlE0R+DUGoH//J/uPnQpZ3waT5i7nD3G2JXhApzgj4X6HCsHNKF
	 J0KJd/tXeb5ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59CE0C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166707845433.14845.1486007582203549641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ca7cb2beb5e8f94055722141f8467d1a535f1918099d10ccd0ea8d6b6df978
Date: Sat, 29 Oct 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667078454
