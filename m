Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC19DA93D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4EAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687017608;
	bh=DzcIVs0efPuxteRYtM04nVGTyeUb2UALW4C6aFWAK8A=;
	h=To:Subject:From:Date:From;
	b=nd/c0kXaW6as8UBzkCyCRUO/1sKr4pTRwwNCBoAfkH7tna81OKAKaN4phvh5Qdjjo
	 W43wn6wjduhMTNhJZlvA3aEg3cpgshWup0/we4zUqeKWZYzoups9xq35+hFXFnr4RI
	 iYC95K7fiAOakmZzpz5k/Wb1bKkQPlSNFchR/GTi9lROw5XJ+Vr6aXJw/oyZ1CgDbj
	 qKkNne6sKBCvTzhMBZffEreaTmtuAYhL2kbS5IyKoSqlyFF1Yqa/wlYQny7HahrFEK
	 eef0va66NMey7A/ziTTK3KGwsKBuwFXl/4cCf3B2w15VX1Dk7UuMO7XdtEtIBrKM6G
	 sUidOZ0vV5+Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBE4EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168701760874.6405.8718609414120688555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80bb60480dbe3b90fc77122f75d400d945378fdab82b599c1a8c262486ea7c4
Date: Sat, 17 Jun 2023 16:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687017608
