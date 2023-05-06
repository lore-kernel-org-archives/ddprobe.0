Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404D17C
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 10:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE05C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 10:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683368285;
	bh=+qXX5vxW4EzsUY2QnsnzsrdGieHyH9uIu7mFbsnuPAg=;
	h=To:Subject:From:Date:From;
	b=R126IF+eflZ9bcAy5k525FGF0krbJSIkPnoUnFeftU188V7txM+agU5+rR0DZsZpY
	 E7XT0+csH0dyLoEskTOKNI77RehCXjUpA2w5dryFcdE1Qcs3aGVrqFE19YpUhXikWl
	 eFWwnn5XsTvaXJiCAwlXKOyKGaZvMSOWchpy8RWNR4l7m6S+NvnK3JiNB6sKVaziHh
	 YlxpWbpMSpYePIeUgZG4VWFGozrviZnK78v9xV+FbbE2vjD5gmC9a0eikdZB1CuUcY
	 pU1ThrzqCT1jtZUHY63SI73HWOnx9QPd2c26fzZryJ4iVjs1YxXV7ovV1jv9ofn7rF
	 ZvuzrZc5DCSeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAC9C77B73
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 10:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168336828576.28682.3550483861082585105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a713d0e97e255c0e800f4bcb09cf556ffbcac72b008b5fbcf7db4e51db5bddf
Date: Sat, 06 May 2023 10:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683368285
