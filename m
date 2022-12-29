Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BB98C0C
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BCE5C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672352487;
	bh=zIN4o8TzPjU7MAUBaMYXHFCC92YpfRUjF3Ryzm2y+YI=;
	h=To:Subject:From:Date:From;
	b=mf1f0UVKLOFlTF+Ui8iHocV11DSh70z4yO9aESrHN0vTsdpfSAjbspXNpj/XcqKLn
	 /CkY8XqBFBX5WvsNKHGtEQ2G8s99yG4jFG20Wt1A4gNcZuoztnzgJeogckEeoQn+1f
	 6g2mwjp/6MhhIKpDwMYRXrV8ZGoXyy56yH2YoOZB0W7lci9tRrL3vK6ELL7J8UHOTS
	 NHWuqUu7iYTHxh/DCic2mtI14fZcZjYTBF2pFVHWP3IQGBI5gQ4u5ZqRsBrUzvjCyI
	 NipqdAWjT8loyeUu4i3L0rVno6aJFPjV2AhMiGA+IO/9UYshJ+85XNbPSoqLHAh9k/
	 AFyPTMuPUn3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ECE5C3DA7A
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167235248742.28033.14538711778683929538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be64d369285aa7bf4b11caba6cd32779e55527507f2ad940d5ae6811935afeb2
Date: Thu, 29 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672352487
