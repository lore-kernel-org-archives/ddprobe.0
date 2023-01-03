Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D628C2104
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8464CC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672742487;
	bh=DEIqLqG5QvdSSUAdPXIgq5ZP4GhAWa6+Lt/Mn/KVt9Q=;
	h=To:Subject:From:Date:From;
	b=XO8naus1QS6S1zT5Faeu26Ausgce/15VURYMWjdaV2EixB92P2TAV1OSWe4kTt7h/
	 ZEuYoaSJhsXz/zT+Bu8bsYpWfDdsjnUDaU85l9UbvoHy9ccGRBLQ0R3a6ueI4OoroK
	 JHJxEGA5/n41mwccH30m1H/JDec83qK4JsoQzmgM1W4C11peQ8OZVWYTXFPWoOVagD
	 Km/eKVJ74HZIWqiiV1RL9WFVuYNNf5HLkoklcn2CajV0XsBp9gwRwpPC3O6D/ZCTWM
	 y8FWWFTLPFwhXcD/OqJ4YhR2gH0ZcYiCXggezaOqiwfcDnM2A+wU8iQmn138IgSyXb
	 GfPm93WFklgMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6811FC46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167274248741.22570.7386581163358637769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dec79d03171622cad3fb17552ae0bd17753f1593663732cccfc14f00c0fe9e9
Date: Tue, 03 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672742487
