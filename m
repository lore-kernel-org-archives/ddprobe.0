Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426507B
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 16:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAABC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 16:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675702565;
	bh=dzcNzPAY+cLmiJF1+0DrkSt1Mo6ixFhoouGcuFS0h2Q=;
	h=To:Subject:From:Date:From;
	b=LoAstWzcvSOrILf7eJ7PshKhPsZbhWHEkARtcTWW1dVEU9cu7UaAgJSmr++6yVYC6
	 dRLr+TVMUYI49Dl/MzfiY1IBfUAky0smo9rA7IoO2SFWqYdeklGbRRQsqeOnKKSR8X
	 FCi2UUi71htXlQAn7In+7EmuEgNK/p6mtu/cP8TeJsOtMznftlQQtbormpOSVuWSg6
	 B9nBckQ5ujoCSBcHL/1vm/vPtmjlwtoT+S6TrIgLK3M/rzLlC9bqKUJ+wiuksHr3lF
	 pq1F7giadlpPnKIt9oNsD8NZ7BLEjzaY6lUWklTyseBHI5r1VBimCAlC2SoOEA1exm
	 FMJl4NNW51I5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C887FC636D3
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 16:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167570256581.2944.18223658470363724632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4150a42db027ba1ac938dfe10c5ecfec39654f78b02c451a97f8f4b87acd3f4
Date: Mon, 06 Feb 2023 16:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675702565
