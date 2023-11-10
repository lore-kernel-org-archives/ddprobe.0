Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DE81C29B
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxU9gNBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8901DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699628296;
	bh=XSyOxKUiUgv4JJw3Lx/eWTmACv9gYHzwb4evDRnSt1M=;
	h=To:Subject:From:Date:From;
	b=gxU9gNBImUim9ywFAkX2Q9Oylh9t1qQnGbKG5EH6QgA3s240zyNKtsX2DnTTl8JM6
	 Po4egMSAfq2skObwTjs4MtE6emS2yWsaR+XF45OqsfppL7ybpYlojgiBfbb5qMGYau
	 QITkTy2yG7fu5Zui3W09r6gLznw1iCmpV9O1OPMqPngciiUUKTSBQGjZe+HnGT094x
	 7Vg8ZPIbD/qmD5fi7HTUPeP++2bVYriLkDrkgRiG6kySQssNbG5XxAElIVN5K/64FQ
	 /nUU49OD7lsBooOMiG74JKEVbxuGl5iekUdwn4g9/ok2kcB1GaklbMW7V0NYBZXcKH
	 XBJDAiP9pitlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69099C4167B
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169962829641.619.15560484963801490771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59dfc9ec9b4c1dda2c7c7904c40b193fb8f1faf8f0d7078e14b295dac6aab99f
Date: Fri, 10 Nov 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699628296
