Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B76C23A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 06:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BBDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 06:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674802385;
	bh=KS4EwFKO/3a3SBCfHSXJXNED0nN2aN5wel11e60hHq4=;
	h=To:Subject:From:Date:From;
	b=sle76VpLqT2UUXfL54hikBg24UwCApLWSE5KgNJc6hDsjTaiEtpsjl+MN8P1huFos
	 JN0hZZ1Aaj6fRwLSPz7LKy0YOEKqi5CVy6h15HjVhF2ch6kN2Dbe6hbHg1svu24GwN
	 WRrOE9seZCbyXvHcKvKxy5Rb5SEZRwQhMTBTfBnKnihurHxWi+2zdVSY8clGLeRtuC
	 YIRKoy8QLYs5iZBo2nwuqct/pLgnKgjVnMlryUDAQoTgM0Qse4CWlfquEaFQhrBqjO
	 nKil/4C/U8Gj9DYiuC7gquWfTaVZBOmxFzohyMnXnVTaSPjcJjaXgo7Nf0D/zPai51
	 pL33bPvwmEQ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94F8C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 06:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167480238581.29806.16421521268015385622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ceac2b708b92847eaf86385b33e1668c43df3c6d774c57a322d4b9cc0e4a4bd
Date: Fri, 27 Jan 2023 06:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674802385
