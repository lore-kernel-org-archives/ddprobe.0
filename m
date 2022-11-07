Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74DD2565
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CBFC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667808054;
	bh=cPvfPHwAMnKinIE6EDzIONJ2Pw7aU1QUTZ4hUyRTwJY=;
	h=To:Subject:From:Date:From;
	b=eQxKOMZHuqfrzbQq57HAxQZk0IHzxMXiXAAoCD6z+nPU1gws5IDjRLuVsU52vmzaY
	 fIV5feRg4eG5yhnmnV8A4bthafCE2m6QlfvrSbzcZINVBVoRFNX06RBdAzo3UqPOnR
	 X4MZbXoTkMzbObiHLRbwqJa5RtEu4sbd50Evl118wwnERkBJ9vAXONNEc1t0akL43Z
	 WCrduZbzdDqZi6R15Ty6C0q5ycSNVIN8bBfq2kPL/xg88YEzkKeYq1jfDJyXagJtqM
	 FbyK5czHC8UiyI9xXLPmwCjCPaAvqgjSGvA9rrtph/xvox6s8DeB1ZDh3Ue7k0/otv
	 5pUK1Sk6OLDwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A41DC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166780805436.18663.15314914648271792124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ff3e9279f6014266d6d873c0e0f1dfbe34c74ad5b1e2867b5eb85b13c1ec13
Date: Mon, 07 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667808054
