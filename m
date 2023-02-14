Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F75CB8C
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 22:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A73C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 22:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676415425;
	bh=j4gECD84PbjsdJWE3ceC1bGJ8M1i1mxOknfbphyo080=;
	h=To:Subject:From:Date:From;
	b=hlQ/XXrRlLmOtkPtppGd+h85zE42F0yBhzEtuvrE6VAIhqfCJzoQonsEBMPBiJyo5
	 wNBdPeyTWAtjQmnt5zetYv7L0uBcXxvuIoXSvXmH1325Vt46TkybfcpdYu2kogVk8u
	 mlk63TPyxKrNJUT7vRT5jVxzuVoBrFKx1z3hzTWcG1FjQEwBVc/hBu2mWtNhW+xxI+
	 Nscu7JgTdr0NNDk90zGsW/jCIuP2JpxaKWr+NNqvlF7mugizzYyJsuI32DNI8BwwVS
	 sLhe8ilP/Hf/IjaxTwwrh+9oQyc738IPyEGudOqby7KCDaXGwMyVtVvv9bZRxvinuQ
	 hgC+cdDvUeYHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83F4C61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 22:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167641542574.5349.15307118483371110772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6d074c5c9f91b37da7c3ab79e27595c31863654d0573af50ea949b461130ed
Date: Tue, 14 Feb 2023 22:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676415425
