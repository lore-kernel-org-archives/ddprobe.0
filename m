Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89B919E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8993BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673310687;
	bh=PxqmHxLNSbUh5rRzTAvR3zIez5zXAFxuinRcPReWPo8=;
	h=To:Subject:From:Date:From;
	b=rCPyzmZuVfMEzfGc6qzvcp5bjYyzikTVIvyBf7ZlO1c0pWd48i8NcEq7iUtsMBvSt
	 Xj8LnQkAfK3qOVvkHaCQgPmK8LSjhEAIdfprM20vm0980DChkGDff3Abu3UYOvMKpR
	 APquL4baLtUsgRrkOiFqW066kcyBH188yupDuvmRgQxNRKCJSNo9nIYKABCRJxvo5g
	 7gscL0x8uMSN6IHbWObJeOOB9zt6S+G4fqraVs6pjETr1RjHHtQDhSoRXdL+1RNuDa
	 p+E1Nv6jxyCqZfTjYfGmDRyu9LcHdlwSgDmBBbmzXRs3jWtAEqQq06gZEV+L237UVW
	 SyvJxLf+gniDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684F8C54EBD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331068741.4888.16158691254817699980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db536392779daa30292c91185b62c614d330a4b158aab7b0604978d35deccf1
Date: Tue, 10 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673310687
