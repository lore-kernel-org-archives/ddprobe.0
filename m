Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718BF1FD0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F95C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687246928;
	bh=aHnqglM9dvFKFayqu5raXp37jFFF2u/9/uW+2wEyd3o=;
	h=To:Subject:From:Date:From;
	b=lpJVpR6ocZq1VcGTmfZlcKChK8nS77qmubrlT6Pd9sL7c5ERLwK/CNfY4Lx16YRb9
	 8FPwmMKci9bqh9HtGS8TodESe+OQxXFklS2G4rpgUGmL9Mzr6Td6vbzycN98XHntjR
	 gp3FrqkmLXnViErl+mymMSl06RQUQTy44AiZX4fd+bS27T6vMcihKwRUGP8CU+XOat
	 Dli0hqoKJ7IoJA/Gpnm1iLNYZth+Ax2dQ7yx+RO7bPZeLC+P9Re9r2hGE0aUf62JP4
	 w5zlaPDk0bF1p2EK8YXL50GGhv5tvkQHa4M0qyfR/K996TsqcuPI+HQlo29ez4gr6y
	 DjNQZp6zzT2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9718EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 07:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168724692875.15601.5695029458491362235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b45ff886c8f0f23598d4a7bdd8d605516f2a7e0887fdd7994c45958bd141893
Date: Tue, 20 Jun 2023 07:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687246928
