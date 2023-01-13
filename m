Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116E7BA41
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6602C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673646087;
	bh=RMvxrLw4wxDb6vnFmO7zL9OKpulo41gT/urJE8XZNvQ=;
	h=To:Subject:From:Date:From;
	b=gDXU+BUtS7h5tZInRb9J/2oB1+X04ghFcKdPaKeFu6c5kSA+leFmO0J45ZEPzOuYz
	 JLGG82T3DcNilur7yKMCvDq1R9Uk4dkpShkM8dPvaQBUMk/tTv+oEsIUhO40qSOhrv
	 OIkZp0zCBt++Deq7x1A01z/1jA2fKzxmPifQP14EyQmY07MBswLaGyw54pC/LzFLQz
	 kfJ3mwp4nIrhKKhJbb40+m+hE8urxpsndxqxXzCIHKaNKjpRZs0AIN2pwyM/YcUdSL
	 Bwb4g12JGdTf6aF9Aju7x7hz3JmV0824+Ig85jm0KXKPskY6y1aAH0fUAAZf8LOvvd
	 NqHLU7PDCmBng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8973AC6379F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364608755.9151.5585900457063886297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5337e99e2a9f34e7362d89aaef8b15d84ef5d65ba274aeda2ff9c6bfc58c7f3d
Date: Fri, 13 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673646087
