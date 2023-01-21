Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE6036E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 05:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EDAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 05:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674278525;
	bh=px0JtCprPbPuGf3kuYs4QyImyrIiMIrZHZkSqwOOxjI=;
	h=To:Subject:From:Date:From;
	b=IuLnvx0tK86T4S/WcArVukvzABPLw/o8hG8evJktWyBMKuLYyRrKo5AUyc1B0SIuk
	 OUmoUc8ghd0Ic9uB6S7Yo8jg5NnzFqCi9wx1Gu36bsZlJfvkEP5f+4hMD2mi2rlSwn
	 BqQ033ni3QtY8EhZJTriP7KhNXPwTgkBXB2byQLMLZTJcMHuqOo11yzWHuLjU3JC6q
	 rKRieskHYX8N4ONTYodpmyzMKuCrdfLO+9Cx8BSuhI9WWf08/0aPA70lT5A2BmeX7J
	 t9Y2t9+l3+j8UXvU3S0J8Jh9AhjlSrf+mCOKP3dcRdSZ6niOLhM/+/a9p0Rbcy3djP
	 j5UN/L+CiSxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C7BC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 05:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167427852578.21526.17882925221381813005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda33514470c590577b9b15a9e887688024c2e7057a75ed16cf20ec2e588386a
Date: Sat, 21 Jan 2023 05:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674278525
