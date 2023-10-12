Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76062D291
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 07:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gnu/2/xQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB174C433C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 07:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697094428;
	bh=xAiZNKg7j3flgO3hvGw/49iQhitkpltCnaSFB881oGA=;
	h=To:Subject:From:Date:From;
	b=Gnu/2/xQdXG4GfCEStEyU2zPq10epIpRHuuSMDDZ+xY4bzpkBdp0IwkBwE1vpedJs
	 x/vmFzykKJEEszrsuRzlOm/tf+cKEgFIzUDLcsu94aTDy2eaLzvNXIuuxeFXdU2O2M
	 Kq6sG8mC/4UeRqLMZO9bUnnoAi3OKhxKj4nubTgBzc0vRpS6s6OWPvFacSJ639GsTf
	 csv8m4LfdsbeTa0ywm6FDoo87cXbnglzRh2uuh/VSWCwq17fjDef2EjwYeeHF80OLb
	 X20IBIyTYPSTs7I/9s7kqAtbfb4rNyK77qfhjny3vXSV2qmBxYD4ZrOgCOv9GuRqvV
	 Qvuk26jf9HfAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0F3CDB482
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 07:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169709442874.24155.9071671867443722055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d07dee02445700f0420d8c37a53102580ad6a3855cc1781587889426c6a9b5
Date: Thu, 12 Oct 2023 07:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697094428
