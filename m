Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7673C02
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737E7C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662322853;
	bh=pZily9gFZsJJJwUn9uNzyRIrHYE2tl+pTNCiDhcbOXs=;
	h=To:Subject:From:Date:From;
	b=qriWMvOlVLBPcrp+dRMnOSikf4ihHoRwuUAZnGFeZ41ejQytSFGlAOk2GXBB+7xcC
	 IwQcBhJEbS6RsomjZfjfc7lJy+63etkxkNco6VD4waDKJhAszM/XFlxaagLHYu3wGo
	 247aAEDxqxLI1/7b8UwjolgT3U9WNj+dRYj8IJ2z/xAR+qLU5pftDuLw2ykVlPWF09
	 lMpk53rzOHUDVxpPX4ELhKLDYsQADLSY0SbBMhhuVHDvgLhNxhqO2W9cHdhNP+gh2v
	 eTR+kbaxt0N4owSzT2bawUqk3X1KxtBW/o2yvPoELPyviq8nmOwmq/QSURYAFkEhvB
	 tCqAuWyMYW16w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C1EECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166232285333.8040.12616069283535308438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4844f1fff83e76ab5f5e15a671847ee5c87a6e6add3a39f1ae059ca0517c54a4
Date: Sun, 04 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662322853
