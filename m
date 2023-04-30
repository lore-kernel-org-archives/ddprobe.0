Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604EF191
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 12:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11F9CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 12:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682858166;
	bh=wSLAzTFTFhcFGv9F2JtCNpsf88//vmIBj4s5NIhrKko=;
	h=To:Subject:From:Date:From;
	b=tVghXPUQHejOpifZtdIbqOFXMUrWex2ZoHX9eRndR8NkWzgkegkPhcJKPPidsMSJt
	 39HlEi2sCtsOpa8c1nSoEg/cZ1pTsaB65Cz2HIK8ViaGlCUlg9ZlRfOVEifk6xzb9l
	 BvS/t6UFVgaw9zRkLXvuXp6kLYx8LCBBCSjUFLZmy9AgcaiD+9wIpKHsFyEM+FlUTB
	 k5B2UwJrSR+327rZFB9bDmHSo7oe3r7h1r3+h/vqFEdtf/3EQ8T5FWhMzPK4iH9ZlX
	 9Yu+eILhdWw9TI5gQjb7xdYVnevdlVSRj9gOJCMAKMVRTUFQgjAHIGERyRsqdqqkRj
	 Clsn4VLa4uIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9CB8C7EE21
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 12:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168285816593.16718.9459997944181472021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4424669086888184e1d8d40daef8c48fab5db2477099d7c85602a9ad346c067
Date: Sun, 30 Apr 2023 12:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682858165
