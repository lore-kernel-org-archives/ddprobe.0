Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B0354FA0
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKBzjA2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDA6C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700590696;
	bh=GlbArQaZ1FCaGpoDNbwr8qrt7YRV4QbOa37DINDoABo=;
	h=To:Subject:From:Date:From;
	b=KKBzjA2MwlU8ESgD4x3uqrojA7RpXWpiSaBhyEAPrgFQQHZfS7XsjczjY63x968fc
	 APGZO3fLY3PXpWnFqKMhsBiPMCDPbSLU+3EutEg3b3ikxWfAVlxXghccG+MkqSvle2
	 jsQUSkjzKHw2ffCPDKuPy7CC/bOJgWNG7S67hLrnhq3ZkiV1Js315/ElTqzPKipCCE
	 1d4pi9Y1oOrPsm4OhtGenIYeklgs/W9C5zEzjPw6M0tzBZAv/+wEM+JGMY0vkX1rVP
	 X5/RwYsT0g6cm8wT9PeJc2yhYnFjmfs80d6yxz1zDEH/Fb/tLfpPw7hEOGHcUv2EFU
	 X+VZ0++q7+aKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC18C61D85
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170059069637.24072.1263804088019276577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1903cb38b926334f3bbb61e3e00501b0be68c8a6bf71a306782d6b9a20b996d
Date: Tue, 21 Nov 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700590696
