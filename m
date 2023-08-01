Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E2B1EA9A
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 08:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9F1C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 08:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690878128;
	bh=4rlGXecX3NoByXDyH+3SJtYgghwDhvapkOcHJdSf4Uc=;
	h=To:Subject:From:Date:From;
	b=KxxhJAqQPzVK9zgb2noUeRSujmTyOplLlXoHzNhJjhL5D2L+hccUtF7xMyJUb5qGz
	 bOaqQfVaUn6p641E7ITsd0Epx5pFdfY2eqrhNjPJrVcLeqr8z73ABsp1fxFTVPnYox
	 beCTsm/PFd8k4AbV3ZD2Zl+HbPQKmkBxSwj0cvtgg8wkq8E+JdCxOWuT9K/LSm1una
	 a8sMRCAJANn9yoIqjGRBu7n2lByasI9cHmsyF7m46kxes18XB8SWLNvqxKH3pnJ+4Q
	 Rqk5SeWW2o3k1QAJO9G6dGME4HHP1RGVHMpSnaIJ2l50F4esgfBKqOoxaGQxXhe2Xe
	 7lenJdk92IEHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22B4EB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 08:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169087812878.11756.17128560757412363434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43eabd127cd9902d4812f123dc0437e7f8a8a34ea49bbe7689130c3751910a2e
Date: Tue, 01 Aug 2023 08:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690878128
