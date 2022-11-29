Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2EF3639
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D769C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669697454;
	bh=cynfXQbapkd5wViy8pJgGLeiryUlcrvcKsGAduhc/a4=;
	h=To:Subject:From:Date:From;
	b=Xs/x43ylX2LnIsveyNDL1rEmamlpl1GtXaWyQxfupjYm2asqDcyQgVgm5Xn6S/5iB
	 CwfWpaGPcCSq7razU6atqEjnQ6N1QFm3LlRyE9f2ZGfCzxbbkVezz9ns6wfxu4/u2X
	 Pw0KZ9Xw+pT6lzN0NBU+jlCc4DBSjQLgn8O0wh97hRStlrO2aLYkVGVPNS104z+mFv
	 bqDPwqauGj9smMrUVlZRdUAWnh5necLDfjlx+3uEttm5zA+uuggMEEDMRqX/HvZFnH
	 K0b3WyLCO5Qif2gieYMEbAlTV3YaHcvISCQmKL4lg4mkZSDZ+dF2+YMJnp4huVknds
	 8nq439bhe9TQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522F6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166969745432.20997.13666243691840416256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a011d0853fdaa4d3aad2fccc64da8b02c65b288079e242d367bf94903e2e0c
Date: Tue, 29 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669697454
