Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAC510E3
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 01:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E73C433D2
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 01:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684028285;
	bh=NNam+EDYBzbQ8HgofoMpqSL0G3l6KizFDe4pOHgYlWw=;
	h=To:Subject:From:Date:From;
	b=OLdTY9F9dryMOS+2pWGiTkoLiEQmIiRbl1NBaH9H38Rrcfhy9Z2d1ETlHScuxT97F
	 wKUCXN3FN75O33ajOWirOtMESSpYFq00BRwPX9ObtLVnUfINiGsAOR/6Jnn8g99ky+
	 aNUY29CdYeoFpleM48IgMv+9mBIRTOf4BELItxhfCCMud1M7pKA1VA/6caJ4nL/yLB
	 qmEqnEInVRH5LUdISdMdZw6nXhZ1kJWSf1CVMScdwvcXd28y/qoX95WWzct5/EMB7k
	 bYmIIT81gjKiXMMf98zn298XGmlgd4JJ9YeY1zqmI9aPvGBvR9Nwc3i0XHMcjLi2Wi
	 MUM5E1jy/alZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BDDC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 01:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168402828573.23888.695846073020646546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da18a99d8000f068c1e9380ef1096372492027cc117a4e80195b061264d535ae
Date: Sun, 14 May 2023 01:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684028285
