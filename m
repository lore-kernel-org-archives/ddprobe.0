Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D5B257E
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E423C433D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664040653;
	bh=fN1qjvvX3bwYF/gEabk+MXBAbmJnJ/DaAYNIxT5p4zQ=;
	h=To:Subject:From:Date:From;
	b=cI0PLuiSWcIbXHIGA8bc4kRH1LzyzQHBfiqLBdWb5h5t8ktAyx5LG7ADkQ2l7GrZ0
	 GzerCnGVtH9EZfqjyk5DXcQiiUB8FRFGll3M60JneXdNRQRLS8ZBSGdlB4XU10GGcC
	 T0KoaxAUDQyvVPTzf61E1GXs14NPw0N3ZqBoMWGe1fsiAdbLll7KqxJ+h2pE+a0ZH7
	 UQvW2L8604keTftmBjOUUsxF06VO0byQSJRL6Sg+HxDO/tUmKcbjuVgIhfCCMCN+G8
	 sAbLeAIGdAolC9Z9cM3SzfH+3goffOM3GGnj8WWmTR1vTjJCzuvOMpY4d8S9mbbXCQ
	 S2GEZ7aLGVvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58847C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166404065333.26450.1308777684965396842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c415f165889cae476b9a11278a91334cc26121db56c06ad74dc9b658db938906
Date: Sat, 24 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664040653
