Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D84211A
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70AB1C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661764252;
	bh=l2hhwZFKmEiBGSbZpyBw5G6g0R3iygXbwQMkVB6WlZo=;
	h=To:Subject:From:Date:From;
	b=ZS/NwkKjgi8ul9RdgC17fPpwsnZYyWkgWSGGxp40mo0UIP8f839b+7CxlyAxtbsm+
	 u+3C6Y6T2ytNSaubPtSZ7qNrdzvrHIapKKEJD81JUFEDcdfBJkip8/I+PYaOBiuDtE
	 SO4Af/ba/uEU+RuOVe4pzM/SpEc2rmN8i+nWHpHo+QsPC/tFikBdE8XdvHWlsa1GZj
	 PRxRkYTP3hpFjxhekJj9U/5F+hl6F7VDUNUjuJoe+Uq254ljpYuX62ETvuHFE4stCU
	 +Q3FvI++UDp4DxQk2dhlntRMm0EgDDxFK6DFdxb7mOtTW9zaGP0hc3bimUHT4QwQ/N
	 LZgJgkqVtXjlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57664ECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176425234.17609.17627593530551657243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba4834ffe2ca7978c995c61da7676b762b0490a99903374a8c034bf939aa9ca
Date: Mon, 29 Aug 2022 09:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661764252
