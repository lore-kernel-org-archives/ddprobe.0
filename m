Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B841952A
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 15:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E33C433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 15:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685029505;
	bh=Sa16orkLVxN9t4mFT2CRjuWrgcoUXDUc/Nf9+AxCiQc=;
	h=To:Subject:From:Date:From;
	b=YuO3hhFDejC7ixP2iEtV18at3+aakimRFI6L+gmy8ekIWhgRkRWWbUVKSewVRQaKQ
	 sXmwFN5bivP38pF2uCQBg+9oZBknw1wi7G0cEfe2ITWCL7PzlG1E2m3+Rs/m3gPdHn
	 UVyrfpYaFNjdEo9+3Km5ejq6CWZoq687zTCUdqaXHzgcRqpsdixQawXW1/sudRixL/
	 ELWjWqhktib5kEvdDIb9SK4S+Nn4WpEvraAg+dR7WUPA+LvMmxTlxcpy1xZQRqADr7
	 7ucQK7+vktxt1kfF4G35B5TFa6c6XltWyV1LS+lNkOAb3lGm74w7C5okDxxD3fIJlZ
	 4e2Y1sbMqtSuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F1BC77B7E
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 15:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168502950574.3765.13199048260501167561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75589136353836372ea39d4e20f489dd6237a114b0836c80e58c12335e22f46f
Date: Thu, 25 May 2023 15:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685029505
