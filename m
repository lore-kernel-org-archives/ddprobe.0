Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F90627
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 01:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF820C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 01:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690075328;
	bh=Fs4zkQDUYjBudpFC5VzCy2C9DqLoGnM/lFCgHoc3OuQ=;
	h=To:Subject:From:Date:From;
	b=tCQytlraxg0pEBqdPQx0LQu88JtmYgHGz809f09Jgc7U2gnxwD/fJxbBM2QJXrW4O
	 pd4k9Bahd8EdmabxzsrHAJz6CiEro4gb45rb393Z5NmoDnxHp9LtdoH6OfC71ELjws
	 L6qaG5l714jO5JAED8hXhMhfs1tav/CFz/G6zcKtqHi2ozegx/ERJ7/Igw8TQbQrYf
	 k8GxqAcRzzqKXTpEQ+mK9wTLY94yIjwkq4d2aegBJN3V1Xl1iyL2iFbSV9T3QcFFBz
	 dFK7wdHiGol3J+ga2B/eu3XV5bmYROCTKtkqzw4WFXI1+1xpPMnJUS+s+v6ocmu9We
	 tDg9TtmOmgpZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF598C0015E
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 01:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169007532869.422.11279268558122226571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c42c6c176b8b0220a2bd41e930c351443262f446846a7167f8efa30424d7ce6
Date: Sun, 23 Jul 2023 01:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690075328
