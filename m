Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C81A53
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 22:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C804AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 22:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693087448;
	bh=CGnWBxYSqIkZBTcUCnMdFAIjW0J+BG/+d/DtQBTCq6s=;
	h=To:Subject:From:Date:From;
	b=JkSVcb6ct9Vn1VOnUJpilqD51KRO4C0D8ZJIiNdRDC0L1fF/Ll065RweVVncPffFb
	 LamjVD1GjtHFH2o9jt1pipVgDDwkO5FrbBFFrvuLPR12vcSRp8wNRpI4fHqrtTpbwm
	 idPDqbwn/4qkdUA5LxsJda6do5R7BRSR5jSv3ROq4gyBv8TqysTaJaJ3bHxfOEXnCu
	 G0fxEUILAkNk0tEEkCYaFd1sDFGWUr+0PL3m/nFUSx/NKLCvfMLV3JoJZYgLMhsI/4
	 OvxhrGRIex2LSMA/Sq6/n0JrCcqkkn8c+Mxx4RaY20K+fW9N6D3WPqCcWnlzMt0K5g
	 MOGRbjMksmkAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9923C83F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 22:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169308744866.10005.13094575988052917665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57200bbf45c9922956275680e9693b1d78f53e5143175843dff1bc286c270a01
Date: Sat, 26 Aug 2023 22:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693087448
