Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3254A85A
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 13:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B45C433D2
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 13:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684848185;
	bh=0CUzm+uBpnLw/hbVMVZSZJ3N8P8musvdi/v0f7kKznw=;
	h=To:Subject:From:Date:From;
	b=sHPHID4v3nFVvUKawDUat/rUlSEQyEDS7o7DFUyoFybZFkDMsM5CMgb0rpqcR2pAm
	 180MeZruf62VL1I5iH8KqCABRLF+1qIbEEi9G0xcHDBCoGgOzz6w/76/4Ug9C/IwDn
	 z4p1qINxGgEkPEn57d8H+2+QHIIjQVxvaz3BzUshah5nc0qXvT+zmHERDGkwBMktmR
	 OViiHCg4wWEBI5kuwsmlbJHrRz/5ZgJHCZxXrZvK3GrwjFDJj+dF+Ts9E8p6RyfTHO
	 Rw/wzmMbquOZEai4Av0uNxmJFkm4iLV1UkXu1CpW+uHf7zLcxm7b+r5YW+GoqCGd2U
	 sFoKYRoi8NVCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D97C7EE23
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 13:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168484818577.6251.16835811514564676521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c4b8e01c0f48acb27815784bd12341de60b8d753f6deb9ccff68e7f37fbf2b
Date: Tue, 23 May 2023 13:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684848185
