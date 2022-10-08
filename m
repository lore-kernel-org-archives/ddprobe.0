Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCCF10FF
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770A2C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665223853;
	bh=nZIMQv1cu2YCiXdieDJMTPl6wVCwRaLUmEEfH1jbL/o=;
	h=To:Subject:From:Date:From;
	b=HFuKfHd/KcSxuiRwCXzMlXkKytstgnH3lSS2E66efCFJVyD/pgxCBgc59516oXtmP
	 wl3ZnEhTkmBTKB9kBBO5Wlz1ylhRm20iqGtSnVxcKyd8ET1Kcap6h0HratkuI6pDjj
	 5ZpdVIyou7rLARPdVImQ9kOTnox55pywYnBz5v2HB8EGGcxxl84mhCuW7VzmN4KSOj
	 364X6ms6zpfVNP1HZCq+uQdE6xdCfY/0KdntZWe/TPpKIkn8O3L1Zr3ZKPjS7YZnfv
	 My8kasQxwSClptWtr/cIUfAPlWIlr9hN9l5tL+Ogj+YMV11Sr9NxfThLldJwwC3eSX
	 GsO9vXfMOBikg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B74C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166522385334.7878.12918966102951042559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85128203c5febde05533955395f2aaee8f114aae5352ff1440d0d43eaef2d8e1
Date: Sat, 08 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665223853
