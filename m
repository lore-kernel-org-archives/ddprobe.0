Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73F0374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD61C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661840453;
	bh=jfb6DQTpMfyDR8Qxes8m9Brz+7HZ1W24i7tA5ic7XuE=;
	h=To:Subject:From:Date:From;
	b=Red6MTL8KqV4V6Yu/acsLvMyVmppeph2iDE54xT2MDrSJNPQmoHV3rQG8AL29h4oC
	 fKebfPK1k0bSh+vHIEePU+swritv77aJIL2HPX6Cq04khudJpXXB39wv63lmIBLz6N
	 dv+Av9+xip76RDIwD/TKIya5oJjthoxubaFyzgOjf8fKO0Ji61scaH7JzNspER0kMI
	 OLkziC7R3NCeJn0Q18chM1oXjVv0FztXN3l4rUdmRNcdJeC+oTDjPSM8YO1wY+/S9p
	 KB3LYCw2DQLpPWt12zyHc28/Q84p7NkK/Xa4ef8b+EJBSZ1fiDKbbT0SF08aWsqMFo
	 C+7Rezi9eo6kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5230EECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184045332.1217.12751072756718174890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cbe9bf3c4d6b746b27c76b15901484a715e74109bd051675df8aa51c83a6f3
Date: Tue, 30 Aug 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661840453
