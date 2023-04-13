Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B48361
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 01:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5877C4339B
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 01:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681349705;
	bh=Ts1JEJY5l6X+LjP/DMV2wNjkK2L74Cr991xUhJTHI/0=;
	h=To:Subject:From:Date:From;
	b=PLn1vPMJxbPJQ+GjIJmNfAnBgOcQSnuxQLjU8X9dgJs7zfwtaT5b3rejKvTmgnicy
	 fX/6wvChFkpdBJJP2R7ufAftfj8DIPMeqmptfGpyFq9qCfNqHSr8Dfri5Kj9Espc0N
	 XLaKkDjNr1C4IlCo7SntyiB0vT0S4hIRG7kuN7Nq1seeAXoTjNloHQnPk7SG/28QEi
	 nH4xUpCEyJIkfquzwwHxrUEou2pnKdhh/9wcTZ/y/lK9aQhy2qWJe7vkAu2+oNbcXh
	 wYwpqbRBJONf9vr/RAhx3BmSxAHWCN8hbM/klvA33u5X3eKDEY8aJf6YPr1vVNYS8/
	 liJzGxCcklZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6F9C77B73
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 01:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168134970582.30800.15143519523146592741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84fb132a9e2702d0518a3996f0330066fe6c91d978dbdc3fb14ebb1d631c361f
Date: Thu, 13 Apr 2023 01:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681349705
