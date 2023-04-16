Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFF47B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 06:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED90C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 06:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681625705;
	bh=Ky1rvcrp7S49uoYkgFKRnm3UZapXZBua+W4K5s0xUsA=;
	h=To:Subject:From:Date:From;
	b=Jeb7CyiWgnyoqydtJiI17R3aQwsNhdZ3qI/DRt0ub4WbYVPVbUAgvaBwVtV9k/PPD
	 iduZgRIkuJUeTxvCNsyfcKyJnsV5rma8BPSKTFujkxwDePuVYNyMIhAa5HHeo1YZJS
	 QbnzbPtXuIoojP80pxGUayqP4/U23vEi9WlcR82eILxnTlxxTikUflRKDHeeHoH18w
	 +WMHcZSZgxNBrBWxWbFdK92MyuV2zspjQ8DhhYDvgGqjdsm5qD3HewyyhHLbdmAIqK
	 biYjCRWYWZ0pMKeSH0uqEO2sHphW43A+nUNZnBM6RJoeDiWY/pe+2je5t4Ab89BcCH
	 lpoO4o2tbw1Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C271DC77B72
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 06:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168162570575.6693.11364680912658459505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0343993d75c1b36d0b0646910f4ae81a55d56ab9f7d76946b0f73eff923c5134
Date: Sun, 16 Apr 2023 06:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681625705
