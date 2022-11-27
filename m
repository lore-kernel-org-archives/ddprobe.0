Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FAE33C4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1C6C43470
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669563054;
	bh=2OqlIsNyVD3KpaKznnHFyQmyfWUBCs0VP/d6QcM/kTg=;
	h=To:Subject:From:Date:From;
	b=qrcv7aegPISVPz0cm1jSUx0lopu0ipfHUMH9eirwo1V4Tn+DyIrb5oYVELlXQP4Ee
	 0BfINtjEyf2Yq54KRa5TeKieTmlQx1PZFkbukxbfuNqK1ygqKyM3kPzq2mtvGAlmnU
	 pxYbhqxtiuUdprcAt6gkre8QRF+pKd6ZLahlXmyMpvy5YnqORS11BOyDVruBBMUGlz
	 JXT7s8BqbaEVqqDau8Or3c5VrsMQx7NSRPIFVdXr+v3WXMEH0biGwN9Ujzz+qgIAw2
	 lNcmwo5EzJaCwT+jmUSIYE1kjYCDMh1ylChV6dFwW5QAoVtw0WHstdXHPTmYBtozXx
	 zPBItF51Ep4Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53756C46467
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956305433.18918.3783546939792648589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da14515febe9ccd685689a81867715e86a48c804fdd7afd06580a62a929f9504
Date: Sun, 27 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669563054
