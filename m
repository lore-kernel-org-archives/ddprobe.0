Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF4217FFB
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9851C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693329248;
	bh=xvc0kODJz9Y/Pswovak2/wK4ahPEJHILCkVD3FxwBHI=;
	h=To:Subject:From:Date:From;
	b=kLJIW9+CW0x0pqoQmrzYAmx9GJbs+2yD9DjC7upvetBPyblPU3+Wc0rztAQT1MGg4
	 1EUBYdt+ojSzgTXj2JA2RhYxAmV0QhDWQa/rj18EoqrQScbGiRhpP1I2YPTWTA75nG
	 WejHFJCqPAh/Hf8tWbmObYQP/LRdj/GRwNREg4K1Wsa6O/QVLq6eQTlIXFOUnFBt7d
	 saLD5ZqeKw7Kzj9EtBwBgb3w3reu5j/t+v6JEnwkmmtPpuDRK4WToc1UkuDiNeBgFz
	 qi1O9k9aWnZckkf5MJyYHxDF4KdxZAogZMuDuRSnipeyAA/eKYFZtcXr8r6XEsgH5M
	 4z7coaHmcvxVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF49C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 17:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169332924869.24722.10532826214167909451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c1b74a94b86472fd23f39cf23a09304f9f7afbdfcaa1b2b334d53287f974d6
Date: Tue, 29 Aug 2023 17:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693329248
