Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593041C13
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 19:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE568C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 19:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693769048;
	bh=91vNkHQvqj7/YzW020obRSCxgkmuZCyiAwrvexu/Zp4=;
	h=To:Subject:From:Date:From;
	b=iwtZHFMGnWYx+Cc6dnTVXjWxgYxxrTDEEn83TM4bFVvsAc18baxkqTTWFMP2vdI9Y
	 V2q8DebDMFwWo0/ro1pb/wmoEr1Cpf5XJr7AQuOTSu/A0VVE3cVbUKJj17IYOchVBO
	 mtxGDRnSNfKNP+yAm5i6Qhv0sHrq2zFSFeEkcMr6sgo21VfBu+jNP7zfwDHwPOkmHa
	 bUztmutUqrVIzMSxZVe/br8dWokOxfOIzA3sNEua0CoxNyJxOHkIPD6n6eYtso3z4Z
	 hJ1UJEeMHNM5sE1FmIRf+oINNyyUmY+flQ93qZUkOS0cScv3jroT3t9HT3529rWUn7
	 ABxxTini9IKBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A708FC83F2D
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 19:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169376904867.18711.17525802608857667856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7735b1be52406662ec4a759cd63bc6921e18978e54dcc503dd27651a9e16335a
Date: Sun, 03 Sep 2023 19:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693769048
