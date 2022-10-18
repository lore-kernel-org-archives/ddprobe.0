Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75741857
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761E8C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666066853;
	bh=yCEdZFWDlrMuvVGCef2091IXnla4DcqKcitdrGFxVs4=;
	h=To:Subject:From:Date:From;
	b=eYVn874e1X4MLQrA4jXqnAl8iTxlTV+yhayyXetb7tgyZ7z26ZoQ3vVR1K73SB/xL
	 AEEaCMuclakQCFKnaH45ty/BYBZ7pjLcvIA/Bbq7UoT6a+2/4z0SIbdm7u/b32/Lwh
	 3hfxF8zd8GznEULY+0hfDRuKg5QugN0bOofxcLkaUl/8qCIefnI57DFZiI2JAN3r0C
	 CXVsEiB5eGuGk3gMlt6nXqYodLjeGLNT1tJW/ZtkjtYCfS99Qjirm6y9TxOJw2bJ0+
	 w9huGpEnxaCYCS8QliWBH9Rj00B3vvbwf6dChrceT2gpcL1vdWHfl/OckZlaixvVwk
	 VURyFNo6v80Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5700FC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606685334.14701.4416856665395844548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb3e8aeaa5122d3c69ea5100447afc5b2a0b0f85d2b91117703b1e4efd77385
Date: Tue, 18 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666066853
