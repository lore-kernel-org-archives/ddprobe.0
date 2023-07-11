Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D55637A
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D24C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689118028;
	bh=36fGIV/0fw4K/3L+lk1+c8PIamRuZaSKYI7ALkIYTfc=;
	h=To:Subject:From:Date:From;
	b=SyuSWngNOs33sdl2nVtp6YjYIPKi3Cn9IfjXSQ2WGoVpJogn06oDhTxEI3q31Texs
	 //NrUdSeD0s+FJUIJ1ggYkck2lrxzCCYdc7YbeYpq3tddfQLQjylrTqCLY7DGcxf7N
	 seKPvDn5yAIsqsmACxiMQamwK1lDGuRhdDQjafZ8JCFsklcwt+U/KagmC3dpi1SI8X
	 JJNfdgvCYvdxmrZu8hlErIoGiPBUmj8OC4qTXZKMAAIECjiJisOCsaOy17kT2DcEim
	 f5bP8F+eQgglHW+hZovDV0jpy7q8j9N7rdvQj6MDlNlkPp5Yjvi/TSUcJPsBLGFUsw
	 b7RglNwK7x3KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDC0EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168911802877.21744.10279491851849904494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8e9e4bf54b8570f64f8e164e4da8c8fe4ff07db4b7df44b3e4a6a379e2ed6c
Date: Tue, 11 Jul 2023 23:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689118028
