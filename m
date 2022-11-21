Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63307E
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 772FFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669012854;
	bh=SmuHIvyvLFk7MH1Y3Tz8v4UKJm1rDk/nm2ZYg8GQMYo=;
	h=To:Subject:From:Date:From;
	b=cOfEl7BmLqwrRJHdU8BkA0U1x5KcED2n6TRnvFkjMZw47a40JA7dyvPZrrPcfgR7O
	 GRlZp+S6vbQxJnNOJOPLnd9QprtnUrpsBr1t8AcQ9toTXbGDKgoIUJyIZmd4S/odks
	 HRPZ73iYi+tRxdgmzwqHyYC/UWG3oB8uwc6Zb8hRRFusUtTFECi2JVA4pl/70esG1X
	 ubRQy0zpp3bCA3zu2KQ+19diJdHAi2kE9lkXE66wgjKWWmF/wkTFKNN5zP/GfYSNHr
	 o/v8+eWFk+IpN/kxkl37u3D8nXlMi70bvaVPWup2vQ+ARcyzuGwlVxuQ2AXer2b6px
	 yvrlbGNuLDJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5902CC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166901285435.24597.8945809935783417433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfcfeb09258209b544a44a5bb173c239161b24aca94efdf5530ab486973df32b
Date: Mon, 21 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669012854
