Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A69321E
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79775C433B5
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665609653;
	bh=InlzMJyUwbmJ4bQOE0paLQ/Rrz7PYFlxcrttJO1zfRs=;
	h=To:Subject:From:Date:From;
	b=q5cAeZMlemytLNwgYP7zmP+Cfwqz7X2p9r3ktGRSXNQeZbci0G+9J623s1dCuCALY
	 aHzrp4UWrXD0QrJArw16WdM3fVjrCnRbph8Gms0yXf8kvD9Utois48sOLm71TTSHkv
	 6XIjIaFw4clMMEyjS4SWjULF6uDp4qd282vkEDl5rBUTOfjazVJo8hMHwR9xFvbeW0
	 gLANq0zS5kR1jfpNxhSaFxfnBu7eZi5BgKeHa7kfnXCJN4crMOGHCByDTV/EHaBrra
	 E5BOobEX3rXU/xQCuO8NptB5fiOC1aNc5P6cO4UPtFgDIzpP1JQ8fASNWVMmLy/3rM
	 GXJZToepTsThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDE3C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560965337.2819.6509665169094364575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492955094bf38ffe736c409979435307e7c410b2de69cb8a161cd60ade6e490e
Date: Wed, 12 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665609653
