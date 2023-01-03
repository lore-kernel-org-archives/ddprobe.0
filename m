Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB38D7E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80954C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672719087;
	bh=f3hC+QVqH47DW7/H2gydkxwOme13EZrokF2nhLr6vKQ=;
	h=To:Subject:From:Date:From;
	b=GfPB/nSA1FGmsT8Obr6jo9XCHRsYTVXjJf7pSNBSD/Ph09KzpXsxjns44o81//TdP
	 5KsO01R2XZuxPH0FuGfJ3DqR0SwYluCYQ+JaXi63PnforS4Xjg5y4IvE7noEMQiaEv
	 ZNgf7ytR1feR1PxXrzv6BmZIVHYtIw4s2ei7KOw/lonu+HJEw+NSrKn3k9EUF7zJdU
	 PR1OO60tudT/uXZN646Q58bgYI5Y8tKxgWzf6kcjqjdvHyH9gadLF13Lotkjh81xgj
	 9rKj1N6oqDu6wVxYOFmQgKYEQlUUFCEGknWXs0r2yXEnrnpBvvO5VAbAkpBJblcZyf
	 dJfSCWlyN8cVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641B4C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271908738.7035.2354671024631560657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aae7e54dc88adcef8be18050ec0dce453a9007c873ece8377412fb61d61ba15
Date: Tue, 03 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672719087
