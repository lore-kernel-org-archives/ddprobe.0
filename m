Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FF02F5A
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99845C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670508054;
	bh=U7CGD92Tqiqpbihoarus9OLLOjdthqWK7+bQ4meBxHU=;
	h=To:Subject:From:Date:From;
	b=WywvhZySrfJ4lRbg6mCs8bP84gnNFvCPslx1F6KJppCoYpYBB3y6I1uyUpRfNuBUK
	 qIjVHvRMKheagjgki3ibafIifiBKSASqHiTFErMiOfNbmkC6aC71fHzErDYC5JrjbR
	 W63nFxiuWPOAA3EgcagXVGuD+27GJUaXzWd8UFKNwrjT7znGmIxxAa8ttonlIWnKwx
	 6Ojya24vEX/tpCUzGvYq1Y0Ty7LhIzUcsVjRLWyHBLIdFeuGBOFiDBAwSRoY6orlbE
	 FzdcnGlXJcV+fdg0PmUmej4mhRAml0AcqYNEBsUCwrKOo++IgCWIWG33mEBQdlYiMn
	 dWWO4m/ubplZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77A68C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167050805446.6310.16562967813661349336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11348de4d92868a6b417d125298cb995baa49e9d782f93eda16934b9d5f3ceb
Date: Thu, 08 Dec 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670508054
