Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9566014ABB
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 18:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2CD63C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 18:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686249786;
	bh=aw7XfKR2VTyN5JeJcG/NqFO6XpAajukBe3+sz4uL2Lw=;
	h=To:Subject:From:Date:From;
	b=Zt43n0DVfrbK0hUiEHnB4nuOY519fgfK5nD6vKximmps3sEsEF1Y7Gf3AbpC6nLVe
	 lUs84Z3DpO/UMrOgFefw3lnMbiqEFIDFrLgHhj5QSKHc0CmQ+RnUM8dSqN/1OUx0Mv
	 uqe1JHN0w6jH3P/Lr7+7oJvXwwk98+tUGgUCSkkj1SUA07Shg1MC6/XRHapB06JhXT
	 /37DijKEdFh2a/WYxC82YZNaEJt6iGjqYp2+odZtNodm16PqK2xQthLCWlgUusQkiS
	 k4eKwAeO5Lw/1VfBxGOw8TjdS0X2yHcaMg82gULcwMA5UStxcmG61AoDSW6klxzVDq
	 hpbrFu1p28RNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D7AFC7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 18:43:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168624978604.18134.13674808088849357173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0083b4d91cd1f60028e9f0b040db1f937d5bb6698928fedcaf56b5b2257de447
Date: Thu, 08 Jun 2023 18:43:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686249786
