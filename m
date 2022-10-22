Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFED719B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 753ABC433D7
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666428053;
	bh=RdnhRG2svnCyLumOnBk5d6RD1ZekuIt6Zpb3AchaYTw=;
	h=To:Subject:From:Date:From;
	b=o/3uYqozJuTBdiW/YAR7CADO79VQUYQ2p6H9j1/1/Ch3ybLgoBq1qmAOMn5LDZe8F
	 G7H+PyfzQRqMDlQPCkBkdU9+5Bs5ukC0GNk39S05IrQwWEL3c7v2XuLPozY4B7Xeuc
	 t+GUC67BxVRjgzUCfNMzG+lHSr1KazzcCUpGDFQpz8YAu1DuranMhXNm2oMciV0qNw
	 t561uQ9CrM9ibArLGGwTwwpt2apqfjr5EdXptSyjjd5JqEGX5zRSYK/mKq5q52eJeP
	 celjuLg7Fs3pPg4BIJV2MS50LkGjvkoGjED28PwYHKECtxbQLO3Q7gMY+BpKum9ZIq
	 G0ds7c0M4lNRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 589B9C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642805335.643.6979023253776438559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf12e15cf85c3bd4ac819674d349fd10a75c42833cce3c3b4f484c74a66c99e
Date: Sat, 22 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666428053
