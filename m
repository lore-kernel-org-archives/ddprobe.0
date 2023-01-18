Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF8E2F34
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 904BBC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674081087;
	bh=nz3/NairKNOR+QBaH3aJVxlyR5Nf7H761AHLJSB41Lc=;
	h=To:Subject:From:Date:From;
	b=U79wDuqmr9YTWBNgZHJSbKma4Mv+Mu1Qh+BQJaU9gAPjrlCqJ1Lj4DtMNdpHvqM5u
	 9KE4DxM7SYpfgILxDOHJKfR0isCATaPVn66vF/kpVsVlI5NMOiSt9WKtjwU+sByt5L
	 080xBlfaPldr4rKTurrof1fjqijEHmcJ4WYrrlFeqIXOnSRElfy4qDW8nISaY1uG3r
	 1cLLPdpO7M+Y3XdQbCKzdXUVn9lb/jONrE2jO0/fSNPQ1d9U4vBg8Dl4eIRWideryE
	 Np5QFgp/1ET9q86ibnW8yeHdgMvV0RiZumJBtXpDigPQRSZ9/3rvw7z9oDj+QrQTBV
	 qw+dD/0Bf366A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC1FC32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167408108744.3944.1257602468087411322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f973106f05fd6ddbbdea9ca7dfa2b1c6eabe2ae4b7c873bb2966f62c8b478be5
Date: Wed, 18 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674081087
