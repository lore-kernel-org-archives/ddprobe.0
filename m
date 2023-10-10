Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EC8524F
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 12:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6vlR8Vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A16C433C9
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 12:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696939628;
	bh=CFtYNEts0CieEFYi+iYEaODgqvk4g4m07E6n+EVRz9U=;
	h=To:Subject:From:Date:From;
	b=u6vlR8VsaFQ/PwHt80UFIu6HiYzCzmY+d0Gn5mL6+CirUzREcKEYud0EShjAk7TtT
	 I0uqQneF7U95MBFMlubTR2dtdYx7kRcSw2XbZnREN27yzQMEBPLDLF+CC0qYQjHFYf
	 bK2VwXJOsiWmwGq88ptD4UMPzTM27C3kfhcpl97LfANv2cDg1HPmW0nzJUVKXCF4FP
	 9Z/uxykRGoA2yjAh5SU8IWixSWzc+ac4nWWXvyvg5nqbbxwthpiE81p/fXUJrdtKHR
	 3cHyme4ImGUxqJUn/YHcyR5sWU1cxFd9rp27rvYwgGzN56xhg5w+AbDVMDVgwM/pG+
	 Hw3fwhGL1Puaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F0BCD80B7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 12:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169693962867.2234.3122733323999784603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1312063b220ef60012487861c09722a6cb028470d785f32656d7d6ddab95bf
Date: Tue, 10 Oct 2023 12:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696939628
