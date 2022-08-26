Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA665381
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EAFC433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661552452;
	bh=dgJvYGarJSB+J4izF159vOqueoVm2pMZMsvCh0LrWdw=;
	h=To:Subject:From:Date:From;
	b=MmB6vJsBnp84BdCS3voVPBhk2iGWll2H9H4iN5wIFWc1uBi1GxmYUEv+bCFykENnd
	 zni35AsXlqjcxzlOXIxvLhK7+xt6ygn7imaDQtfT4mDy9XI4BrsBpEvtX6xAvSW42Q
	 b6Hqs45tNvXpGBD4SCeljDOM42MtkeeDBa0uWOPYrC/EFl+oPuxWMpCd2nELoYFkx6
	 fKyhsl2tgN3/LJexVCz77aHnlLWhrTJ1uym73/TSqs7FUhcdLUgHw2BTJlapojd6lj
	 NcCO6aqG6rKdl2RCC/RqX7SQn02XumtPevyGb1Vmi2DpsW7MrMfLg0JvaWFouOkRsK
	 nFopBxUQx1s2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E1EC0502A
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155245235.25145.15210269634745296207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c1aa68561fccf44352f5d9fab50a137d08db737800ec464580da15d5b10ca9
Date: Fri, 26 Aug 2022 22:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661552452
