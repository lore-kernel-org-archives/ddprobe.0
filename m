Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A5D8820
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 05:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D040EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 05:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695966968;
	bh=mRNzpJiYG01Xk+esk7nyX25JjzPrvN+1iruPSf47XT0=;
	h=To:Subject:From:Date:From;
	b=VAii/3rU6Cw86d53sBPuWvg+5o6yPVW07G3X1HiZ1HAwpuyqXpobfEcor1L70QP9m
	 Rme/C95zJlO98U3FPYjEu7dle/IATDHfnEfGQuBLN7vS7ryXF6riqTYfGwoeesopuN
	 7tenVFKZUz0NxHpMMsWzNdBb/mS+LOiD57ExXNh3py1NRQ2zK7nr4vZvJlccRj1Ggu
	 j0fRbTSNeIarMHvIZPDJcZrrGe790ntT5Xj7JvqPIkio7rXEDY32Avc0xa93FYCAY8
	 HdWZ/LTigVP3mdSH3E3wvUKz9R80RxM72kTADpnD+p6JxJo8OylhXl1KddIPZNDprb
	 twLB5uRKzVlVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B433FE743EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 05:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169596696872.21899.16112345807910957094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d3df76557384a5dcb533b70ec5f4dd25e78e3a08d63a7decf5e34ac60cd6a0
Date: Fri, 29 Sep 2023 05:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695966968
