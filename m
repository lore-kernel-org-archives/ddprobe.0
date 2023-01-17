Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E203415A0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A1D4C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673920287;
	bh=t8IPm/GJrkviU9j/yNuwr+1+JBZVEh5gyP3ibPqVMJ4=;
	h=To:Subject:From:Date:From;
	b=S1hORmUuMOkXCOwdfgsPWXFZ3FmYIzLNncw58DRedWYlm1Lc7m8FwZfySbXvtUGu9
	 x4LXcbaKh6Sm8MNWpIFSfIb+uNYSrHQ02MSYQubfTIMU0Z3VSubPA84S5zGyGRfbcD
	 kZ2wPAEGPwqg3O80PccR2epVaWyToB9qzYp1Pr6vyRgyFwcEMYbb/1oa4Yi3xxkeJC
	 HKAyMFtHhG5ZmjYDIEBTg2go4nPZBPTX2J/D+vOWvzOHDZZaG+1mPzuduHQVDV08Ku
	 ELRwMEPlilIbiLuBcbU58XMcW6YaeAPc12CJG5UOdnkn4d5vam9W7l4z0dx58XCUZ9
	 du69ZzeJxI+0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F13CC54EBE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167392028738.14410.10354190645609668232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32a5f7a8e065959b90324d695512521bac6ebfd17386b39155a47633362a915
Date: Tue, 17 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673920287
