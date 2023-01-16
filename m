Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A2C6FB7
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97C52C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673898687;
	bh=iz/pFYtXN3g6o/PDwGldus8r2obzlwDvi2KEpaCmQ6w=;
	h=To:Subject:From:Date:From;
	b=WB/cQsPZW6j5Lem6HlMFe994Otdfzn2VjS6E3f8FyGD3vzxyOUa+e0GiLJAAfONjw
	 31NWR0YJeGGKJ0iyJQI2Tei7sscMc42I75dzw5ZYsGKvhPJ+gs50vSXKy6CujTJh9c
	 5WK+0L2h4qZQxVKXq926eoqg5aysvW1sy3dXx/47gD2dnhy2lRxiEMrm2WDWri/D2s
	 hwCbjJMm680wyzOuOW8IK/rnEEzfswORxFF5rKycfJnct2gofkmj/Zz+++OMRws/C2
	 O5zrQ/r1fGy6nbKopGr0EnG1dba7a3eQpFX5EuP0mAh9XVlOQBJsnA91IRMcP5nEcS
	 CQoWodrRka1Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77ACAC54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167389868747.23362.13666548074913220700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab15e0e57aea3e2f72c2087cb026142aeb3a53b7ca3148e5443f91d63c584da5
Date: Mon, 16 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673898687
