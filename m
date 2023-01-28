Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377458BEC
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 22:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4073C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 22:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674944585;
	bh=lGMJ0AtA5Ue1GGXbf0wdYplmwnsdIkGFcSBwTnr1e4E=;
	h=To:Subject:From:Date:From;
	b=rSQl7aX9JbAE7Jc8oUlNtpqxW6Eu2pEq5drRTCs8LOlFPtsDUhBCVD1ggerjOghxl
	 BGxicOvyVSC2bDNxJmS5oWyU+Rqv6j8RKVoMUymIXZNboxT/InbAk3RrhT3pQVSQDL
	 J/DTwkZklNSrTAmN5QRKMKRhWc/Clo4m5IHLIaHDR1F77Oq9Nc/Sw0prawZIjV690N
	 JOBlAmkFN8bmBDdCNiIUedli9biVcRkFBpF3Kot/DqRoSX0IuQWARFsqHRcxUmjMss
	 YIWr80yzK6XeDUTClJ2AJPgAdJ0NhbhjdAXRih8swywfG4dza7DAWU0hf+Q+UTSGhO
	 LljelbK3eIz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12BAC38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 22:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167494458578.9563.12359232983476549336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891fcdbfcde053c4e7d7295c5c1af8c019d3cd373a7bf370cc2ea0d35ac2cf36
Date: Sat, 28 Jan 2023 22:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674944585
