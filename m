Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED27E20E8
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86495C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671085287;
	bh=e/KAFBUJahCVqjamWmK/SmsWaifFIZdJTClEZBZSEY8=;
	h=To:Subject:From:Date:From;
	b=WgNwvzATaEa53TiKrRt0jwKRWiCtICboC6LDR2Z0/Zs0pBdFwm5EekFcNGLXod1ix
	 6HsiCG0bpuByNyR8ggYCBEWCzm7Hj5fyTRS/cf/sA1IYs3sm/zjaW+piUMO7mJ5XHS
	 aQundCmQu5KM0tUNv7w7VgH5YQ5nD/EUGpUqnIqgnQMMQ/k3G0ztttPmG4/viU1z//
	 Bb47l2M8rrB0bvCpSA6AjPg62PNz9w4YUwyaQbdss6j/q3nDLvhwugNB6ib3RDHzMd
	 k8tWT7LkauS+I6XB7OoZxXvYDesW1zkzP741E4vg94n57W37ZugyWwzSrY9pszxl1N
	 pXe02nPwQTHnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D4DBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167108528744.7375.4909329267851854834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536839ebe5c2d65f7b174ebcf250e4cf6edba6989cdb1b64f9f347bcc0c7a73f
Date: Thu, 15 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671085287
