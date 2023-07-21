Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F4827F1D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 18:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA54C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 18:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689964928;
	bh=cvkP6ZiI/fbrE/N3hDT7IexQpLKwFE1JO8JdFQFdLcI=;
	h=To:Subject:From:Date:From;
	b=NwyPslYfhTdlkzaiMRfOuLirHkGyzOmsXfoyOGGbYy8Pe2NBtY/DWFfLfRFwy1ChG
	 Tg3DkBnv9slWuuib+UGbOmgmvn7dCvA8IlfTSZAw2i2NBYl9J2b3ouGqy5oxtgN7KB
	 WIt7K0BpEUFIdnkjKsUhz6BuJm7OoOEKybtl3qZPsLYYM7GnHFDahxEGc1RsOd8/M3
	 PD5M40zar75FquVrr16+U3nQFgeEncg8pZHL36ambUfD1MLGco78LAtysMs99G5RpL
	 4jnOfaRDJBI3qnRz6ycSHUGwxs2dw+qGPhcgCUVcaY250gprwpZSUzSE+tctE2nCrN
	 rUMygI8O8KGMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE22AEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 18:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168996492868.5225.17115990871021324564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfd6a07855fbe41af7428910eec7434c0507998cbdcb83992856e5455dba9b2
Date: Fri, 21 Jul 2023 18:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689964928
