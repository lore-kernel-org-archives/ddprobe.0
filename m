Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87DA374
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 889C5C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672723887;
	bh=xiltuUk0XwDVQGPm/Ol5m9+EGTD9x/BHEBPazLBVvR4=;
	h=To:Subject:From:Date:From;
	b=k9NGRQZhO7XH5BUlswe+OKmVcNhNkMOt5DSw6nOUCbIPBBem9MIyhpg7mCcWqMul7
	 kj+booOstQGFmmVnC+aQt5QvLbCmr1TSJNI+9MqJEhvaQi/If/NC71uVlW9py7Ds/W
	 8yzMplSHlI3kwBzEMKdgaIynWeZoetnKRJ+BYG3EreZOB/Pbcb+AzNwgiupGuaHV04
	 zfzZNNmSAhiEPDt5aV2Nl1A7SHV3sTncbm+jAQz4kEz+tR84h4y14xeUPxZ6eDN/3w
	 SNWPSmFeONULARn3oEcDSIz6TTItct/VxbJ+X3fvX7yDcPSbRlzRCopYGRvQaYdVhl
	 r42CArZxwxzaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6789CC53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272388741.6645.6844390904464169770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea07f2edc8646f8dfdf81ed022e1ae2c616e665b678233d67234645ce18564a4
Date: Tue, 03 Jan 2023 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672723887
