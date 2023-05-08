Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C2611CBD
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 21:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC715C433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 21:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683582605;
	bh=dTTpuZWQ85SxxP4yUz03JKuPjq7TTu6UpJQMPaIztU8=;
	h=To:Subject:From:Date:From;
	b=P2uPixV4LGQV+6IDrbjzkEQr7ki6YAAa/YVm0/8BfTJMqQ6S4tdBsn62u31kAsueR
	 L2FO4wZtdXM25o+Socb76xV/NBxH42O5oVC4QOmjXjh4/WB7kvC+kzf+CinLxOQlXi
	 H4nMXPC5jX2I10W6C3Qel+pBfiO4VemBRNveZT1dzgINcGNBXxDT/pTAC2RsfvhOMn
	 Xp4vjn2EYB1z39rfcY6S/rkIGW7JVzXeiA4RvIGo2WbXGVW32HwMjmhzVn+xZ0bfgE
	 Qi+zojmRGly1LtOSMx1NuMHJKBRM82onKtRmSETKk+VFfcUnDRZT7s9vfc1tJpxWq7
	 Qrk49J+HXsqLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB33DC77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 21:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168358260575.26599.2288007005311882646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4f88e99bdbcecba8a5286be760b56f8d70b76ff8d59c60694ea62081fb021a
Date: Mon, 08 May 2023 21:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683582605
