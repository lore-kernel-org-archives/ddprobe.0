Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376DA803
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 08:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43E9C433A1
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 08:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678350665;
	bh=2WqcQ03lOBvjLQjJNGCu2lijJ+hlSOZ2zcQ/ZMybuxY=;
	h=To:Subject:From:Date:From;
	b=EhcDIABfEPo2PtdygLF1YJ7kg0I1A77xgErVVnrXHLqcnT7UwxLT6iR/E/eFVj59D
	 3zrjpn/U7MVmei8A8OHM9ZwBrOEG2w+kZQrbJ/DShT0bKk07k/CUOGIS/tA+TZHqAD
	 eNKtyoc+nBrCCs6Vd1HPkR4a0mpWPkDtzYlxMLlGzpmNUSSS4cDeyWkDepoaoUNWdE
	 ZkwbDijITwuMUCKQYviHxKRJ3Mx5Cepv1l5rjDa7z1bNmDP3ifcu38J8ouQDV1kmc3
	 l3DRxvrAPwYuj8yDHu7+CTyVqdrLxY6QtAtv+cI5ZQLWVowFEvjcGTQdyodsWTx0eh
	 SzCYl2nivm18Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAB6C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 08:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167835066576.3390.12985548208209444352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0810943948239503971fab8dccfd4a32111779e248cb70006fdc17961df177b2
Date: Thu, 09 Mar 2023 08:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678350665
