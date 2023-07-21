Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90351182
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 00:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6BFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 00:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689898328;
	bh=bevLFw7//+KfBi36N4lFWo1YCcJZzmnh+wgpoh+7tT4=;
	h=To:Subject:From:Date:From;
	b=hp7Q6AkhZJQ4jCUtilgZEvqSNCR5B/B+hJIiioEkn+ExyumjMnsUU8sWzvsu6d4Qw
	 AavfycYCk4SB8I4xM4wpKSAB1OOF4iXI5/a6VWyBhzNsAksZTZwPOpHSzxfGyTjZCG
	 mpmD5wdF1L+YX54Cpz/jBC/Qplb5W8qVB/jt6VEo1Byt4nFNK2tjQErsnA/igJRUpF
	 yCEzu+nSzgilKqs/qSVYTFeW86u943BwflScRF/EMf3A39aJDcXUEThQM/pMDJeaqs
	 W9XM/1FWt59k/bk4y+TBkLDK1h6x8kYEjbheS3vI4nE7Q1R2JR3otUWrZW3dxMhCML
	 QRq+CLKkCCqtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B92ACEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 00:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168989832870.22531.762020950243730666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013d8c1ce2c96e5743e2a896efe3c17b84425c72a6b1d55f98ff46c6a1c92321
Date: Fri, 21 Jul 2023 00:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689898328
