Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4BE1F928
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 13:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBLVG1a/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CC8C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 13:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697031428;
	bh=Do8CqtlzsDwaDmHzVumlGNQXLVttPpt5weUDw2Y8/aU=;
	h=To:Subject:From:Date:From;
	b=QBLVG1a/vxHaQc2hN16sow4EYhj5CCfYfR7c7N9udbZAnSDgNR6wlSTvJrS+Ue7Md
	 5GpINbgc8zD0fZpDFd0bKaZFR0r0H8S4hK2j1IQK1i9wmmx+auaFDih43yfvmeoyzD
	 /bjqR0Wc25ZmN7g+H2CLqa3CbCnVNRPvCSKjhf102aN76nzNFC2wGx9rRzc+6HgF8r
	 r+o9wWCR6y2LSo1QpJxnTpxX2eUVbxM5e6IqQII5OeB2lrLFDXbTWIFuZTePShhieo
	 f7iG8pw6jBSCy3JL2ISoGZ03yFHt9QLkRLPUdRG2oRpMPpFmjiNRgjlizGniwH7uwe
	 ZrMKydr7fXv7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EFFCD6E6D
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 13:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169703142866.29692.2627363689812187241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5a2f8654cebcee5cf6e12a908cf94f9ae06e7e8bad35e9ba1e1d896312358e
Date: Wed, 11 Oct 2023 13:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697031428
