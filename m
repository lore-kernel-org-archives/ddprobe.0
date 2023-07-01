Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF2917CB
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ADBC433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688178248;
	bh=BE7w1VBmvt3YRxVprqcbe+hke73XJlOfTlfrz+JuWMw=;
	h=To:Subject:From:Date:From;
	b=tWK32BcxxGx1usgCh1NK40iFjuAogg92pWTGBoqFPfnkLO8bM+PcX/yR9SrNZ+2yc
	 ofpqO5ZES5qk9jF+3XYjdDw8OB4dc31bix2spEqeEE7fuU7x5su7qHPEwEw/oGAgrT
	 Wca7yBXS5p1YIvusSBamO3HsuoUQTruzHehMVu//oTDwN92w+1hKSsJr1fWCxLONaU
	 DHpuy5ZWbPzWgAcwy895tEY9/K/huGgJ30SGOXmae7gWZx91fkzoTZoNNZWg0RSLax
	 PFX63loJoLRZchTPSqM+175WRyWZ9ixT1cMa7S46Xp2aa9N1kTUpL/O27YZRRM0vCk
	 oqcbIsEbfAWOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AFBEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168817824868.7883.1630207661973766064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e77d119e0ab26fe5bddf47f525b1a24aaf4384cecbf8f42fb3ac24ee7cec263
Date: Sat, 01 Jul 2023 02:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688178248
