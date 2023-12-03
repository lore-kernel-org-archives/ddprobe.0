Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C21E28F0
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3765yBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 890AFC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701590296;
	bh=4ozKs69+asYeL5+GvPe40E7UMb+Ikqdk2E8FTlxfTnw=;
	h=To:Subject:From:Date:From;
	b=e3765yBApLO6/Z7trSl0sH9/t0qIMzpfupV8gZP/FPm+xKHIMPX/mvH9S8lB0HoHR
	 P6TXF/VC/zcPdT5yQyGxT7ckgmJw8aey+SZ+0FMIo7fPgRVX09Q3ll1WDKSYG+poiJ
	 kfGdDORYnWsyu/cll1kNSPs7VXl3BiLItRUgC8OYWxnkmqlDx2OjhMTYezi1GXrC8S
	 A7XpiyYG4RCAvndqrcLqYUDuXzUibuPtBzWmj9jT+H2LGf6DnZ5d7vdNeru393J/vh
	 lmGdJz5sDJTEgTlUhxNBx+cNuZYxdV1OEZCUmmpuX9sMwkv+vGF0oB1eqz1AAPMWQ5
	 uygu5ZrOxIf+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E0E0C4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170159029639.30156.14700078794813947527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866abc62dff466f459e2922b6a85f889d57ab703c1c1d0c17f5b6b4754d212b7
Date: Sun, 03 Dec 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701590296
