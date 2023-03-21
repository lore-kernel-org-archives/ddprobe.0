Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EDC1FB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 06:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4533C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 06:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679381885;
	bh=bbv88iOjKx2VbkQlnmozxDpNP0lK+QX091UAj2RwiuQ=;
	h=To:Subject:From:Date:From;
	b=vEK9QVn26BVf+8zb3cB1YTad4C98+5WlzFxBaxa1GoW0PvNZPfOLNCuqpXUVA49z9
	 g3eRpf2KG/P845uz6xJNC4kbwr597sKAwyeJTZXIVSrvAqBjkZcvgEpFNuZN1bUrUu
	 1jUN7czG+bV/46g7ptmYOv42edZGWfV/r+RveND0TjY8J+nB0g0U327zu4hmO0E83l
	 ClP+9yPyaZyrzZ3sQzB5nhHXwBS7FAJN58fBt/dM2qwSm2ytUf59U6C/W43F5ua+2s
	 vsHdBjD4pBrLLYT65ahJB3aTrGj4Y1Z4UbIRrcCLA3M2UIEUpj6FUKo5Sgu3vgLzeA
	 uvu6OgyfWbpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC901C74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 06:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167938188576.18485.15640046926063977991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7069a044e58717a73be1b2a8387c9852a82f3aebec51e2bfd5070ea4f3017636
Date: Tue, 21 Mar 2023 06:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679381885
