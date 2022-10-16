Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA662568
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8061BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665957053;
	bh=VNecuiE81w9D9ZCUxT1nAsmfwd8ZJ+upBzZ6tIZUV7U=;
	h=To:Subject:From:Date:From;
	b=B9bjhLNeoub45UuvJEmfhlFttD3SbzSCB012rW6frw9u/IGdokbD/Kod7TurlwaV6
	 3PPtiNgDqYkcHC+WAVj4/Ze06mmqpoWE9HJvUyG5Ly4/i6dY3cCs394y29sMB4xJx7
	 9Dle1Hl1859vXL03fIMU/2YO/RvOxyO8XtL4MYncJutq47Fzz+EzqgV8hzTuLOu6Yn
	 K5xMbgVFjdcvSH/wx+TvNBx7DIRXml3AsAi7tthHo/XhoD/3/IhDwB00qTGKjcIVnt
	 MS74+c0MrkAVVeXPfLM5nPxLoIAPU3/xXvxNQxm+tNuZcdtLy9EsQCeklBGTqPj0Ms
	 ZwVe6xOJmTJ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6214FC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595705337.1978.5217547999139553502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87256d81baa036024dc0fddbede19f8bade23feff3dc721f89c17a274b77f9ea
Date: Sun, 16 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665957053
