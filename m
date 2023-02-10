Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580F42F41
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7294C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676068445;
	bh=9SrGh3sWwc3ro9F+pciEcyi8RZzl1+E9rMDYKchEKP4=;
	h=To:Subject:From:Date:From;
	b=ljvEpIQgg6zBAINsPUD++OrSys+H0jr6nSfzvFifgbIXel9ksp2Ki/CVZSO76O73Q
	 sti2ACZVcj+BF1YrYOke1TFIgtjI6gHtLaKtHBpOvs02dsNXND3auFLNQSmjkbj6Zh
	 N5jkM1L/Q3zl3FM/7lDjmzr5WwB+8tnOOSyJi9FzmLf67GjT2JexEFF/0rRn+MiEFC
	 vnRElKFVaDOQ0PXGf8p95Ls0o+cud5OD4h6R955nLJwMaxX4HXIdIoHgvVsNwKhVeZ
	 joVyA8lg4/Cpn7/L57DnBfaYt7yQ+7oDcy6KA1o5q/kQ1KK4aSegpCG8PEv1TAGBta
	 HGcHissS0PNNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4673C636D4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167606844579.29059.16982060972264203997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75459f39c9064fcbb88b4e64897fc8a6ba34ffd32fb2c47f3b3a7d3da8e895d9
Date: Fri, 10 Feb 2023 22:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676068445
