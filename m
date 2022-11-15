Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCA88ADF
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7542AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668552654;
	bh=bNGHK2DxoZfe7U7hmpjDv6+8MMkul5auIALC+3SyM8w=;
	h=To:Subject:From:Date:From;
	b=Dik6Mgolc7OBBAnYJMNM5AMzSfCFx6Fx3k24ZuEep+xMsuEPki+DDMtb+kqMW518J
	 MjucVveUmnk4e35YbK2fWYWmyn4DD8HVyn0RUtebyFoe083cL11cBCpZ8+sKp36DU3
	 zSeWsMUhezsLLTaWbYaDrXnUz8rhlH7d5QbQN7erZk+/AYz/gbZj6NzaUqICCX4NbG
	 Ip9ASALjL3CUEAm54CpX4JCpby8K6A2VQd2o2Wb+NbFLrgXuCbm/NJ7hX5Um+Afiem
	 snVi6vV0Om3OlGFLkng6FwdO+L48/eSoZSJkz9cTk1akrPggOu182y0TdpkgMAJ+2G
	 C8xcWVsTRxJZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B2AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166855265434.3862.4602602026987873088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff296787e6ca8142fbd22c86355201396c2cde919223a1f9f9dc6c9fe415d1b
Date: Tue, 15 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668552654
