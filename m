Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D2E46B4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D4F6C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664302253;
	bh=YPDZ0SIiBP8RRX37EDT64vMvdvnAnNByQnSuVOrEPK0=;
	h=To:Subject:From:Date:From;
	b=GhrVoUeAjYu7DxHaie2ZQtTZrqTo/bJQSib7fFAlE7M5/dfnlaftIJMXdZa2vp7X7
	 1y1e59JeQYgwhR+3jqug5vOIp3oMn9UrvR6q+thwinS+CXjEft+qZUXiGCEdZW7HG1
	 GRQOrHTHtIigkDesb2/C4+baKMeL0n0Fd+5AHQpa/dd4atJ2H583wfKEjl0D3icTYH
	 mQEUggg3FE2P66tG8pBCevAU46Xhxrdfw02BEjbm2sYSkvvAvc1R7RjZCAOCI00gbz
	 DoWMb+o3xR5dGqhvXG0ssHu3OX3yh2TbeHHxpN08V7Nrfi0i2vnaVYI87yTAvHe/u2
	 n4OQ/MsfPO2kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52155C6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430225332.9617.2108184583533954058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50068b6123dbf90c0f90e34ead597480909a2ff6b1d3b236d5515fdd9be4857a
Date: Tue, 27 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664302253
