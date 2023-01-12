Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC8079C9
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4EDC433F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673538087;
	bh=IKzKAxWL5Mtlcjz36S5sE1HynvL9Ph/f0RUefagR1T8=;
	h=To:Subject:From:Date:From;
	b=OG+aAr8+muNJ7vdyonkTDFa6ozYqAv4qO0B5Klqk6xOqCKN/o7v7XxTMXtAiuLBk2
	 9p71suSNQtO3ojOMoNr3X4pE0yccMMQ2DaHb6dKAarGfudUptYXSlHsJC2ptDdq9UB
	 WcO6xD6SnYsBdPmZTJ4nWzprAXGsVWOMBsqBvmMCI2F1S+QXaC54MznmdLhL+t898x
	 eEIgdKS/awf7NqV05AyCpkecE11iHYhvbfFDfkR6sa+LGLOBJXXLjNogh5mXtWfFi2
	 Btt8bympsJ6qjqAY2FPfiYG5MVu32rSbZylULjVOznok7jwA/qrHclSNhxeE9BO2Ew
	 OwWsQPuoTLT5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F29FC54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167353808744.30829.8569339429169259284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c4201b0d3dd6d1c94494e8b29a1a9b27a5a10998b1be6d97bcf4f98d61001c
Date: Thu, 12 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673538087
