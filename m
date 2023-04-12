Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C2C3C02
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 19:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAECEC433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 19:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681327386;
	bh=tE0v15f5vjEHnw0mk0a6Ze8U0frR6eV/Qs24CsCB2rw=;
	h=To:Subject:From:Date:From;
	b=RhzV/SNPCyKr5mA8nOUOR42hXPhCH2qdh5+twL/sM8WnTCzC9yg32RmUh0l8SOz86
	 PXbDu1xGtMULUHTdyNkCmGksUTnCtMVNjQAVwC6G5XunGITq7mO8l2qc4tGez80dFk
	 oIomx0WmhraqANZ6gZ4nB0uzFTkwgXzJdQAYnmf0oG05zOnDCbF0sanWC8y90slA0R
	 VsV5hZOjCXOlpfxrDN0cvl22pOacMiOL5mnaF+/nLe8Y61tixaLEBXEtWwqMD8u32E
	 Gztq9e2dKG+iNwxARDyjHhSiPJPHDIcv25vbxKA5VLisSIML3egiK3UjoP/OLHyiVg
	 1l0UNzXoAwksg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB82AC77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 19:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168132738580.7268.9742051684428563077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94299547adb09b07c41c1fa4bf465c095e30d1bd713e27fada7ce00ae6a27c40
Date: Wed, 12 Apr 2023 19:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681327385
