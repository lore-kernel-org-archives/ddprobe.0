Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CA57B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74547C433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666056653;
	bh=pfazrnuvXcalSFM7ISyN8SplvGvZh4+koVCu+wWo5Ew=;
	h=To:Subject:From:Date:From;
	b=T+tJtFeCmfysZpBvXAeFGTZsSe2+PcYOW77z4U+BG5bePeSOMZRVVcWUo3apinEyK
	 1uiE4YfeoRcmPCVApVYre6LeQ0BLE9BWjOASErXwkLv6FRlorX0de7FScB6yyTtmwS
	 08NTMJNEriRSCIqQMC0wSwuUQ6sjegMkBR06SAnV0XsdWLGw3OdS9MvfPlRKuAIw0y
	 3VvKYI8oBUHp+gDaAz7AlzzA19noL+fkqKOsnGd0tg+0tH3bGXmHFtjHWBA7QCUtD7
	 O/+Atb77e0mLcGnbsaGOLhEgYc87leKAAorEnAckORLBd3DsNzRICsYUJlKaH6L61I
	 6hxy32Bon21kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A98C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166605665332.5782.685095937132462321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2abae27c0a753c9d16e3abc95ed5df893147a66f7d73c0dd0f4556a6fcec3b0d
Date: Tue, 18 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666056653
