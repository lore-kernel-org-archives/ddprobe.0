Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF1A15AC
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE70C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672446687;
	bh=DgU5TWrrtIhtp24af0Qs9Xs5D1ccBrHmp2KLE036LoU=;
	h=To:Subject:From:Date:From;
	b=hya+AvprqjUUyyJ6xSKVmmYqsBAdpwcaqHBLDHdc9tMYyQhcJKHn+G4XI3i/Tcc3D
	 VfY5OkZudpLQJ5ExwuQy+fbsOCNqK+NwOt2fsbmlCxd7zjDTCemTXn2Br/8q/AL6ZK
	 XVkfuC+MEhSMI3ky68BgaM3X4Kv/PtR8lqorPgznGeDwloH3cYk30O4asWyXinr8an
	 2GpuSzdVHnTSjsFuQAG8Ml7ziK8KMAy3iKCi3BA8/tVZK7M5mXncxgoWXxsgvJr5UU
	 nBdx0G2Zs7JDtEQ5DbyspXB+sDq7yvSN+hiw3pSFCBIDRZwDD8Vd8kAE0sA0ngOBbh
	 3O2FCDnLMDRGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E5EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167244668739.18228.3810916388515109738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b151f1814d29908a3b018b5129e56c79995c34f3c776671e318d4e8abc6d619c
Date: Sat, 31 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672446687
