Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B8912B72
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 11:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4ACC433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 11:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692272588;
	bh=bJYs9edcXzCykGWNo+qv3+P0Ut8sh4+Zvregu+dhmtY=;
	h=To:Subject:From:Date:From;
	b=UOcDvS4jgeXh9OGCxGvy7dpMLjJiB8jucGiTMo69nYuhUDZtK4rKH9oXXj0/emjeR
	 O0qDF2G7u/JmErEs3mQiGf4+ekQ8Kly8cFJPmUpLjvWgp1aTzRRz2ZYgUGsIzU5Hxq
	 WjElRjXqSCKf3VCazvTpMMgsefIaH/LJhi4F7kI4P3VUEvRgALZr858zTjNgpgMRIB
	 qSMdffNVSBMLFwIOb8arcFEL61rExQWJ20g3JAupiPe/nA988jcjcRXowjFcpwfLm3
	 kNRf7Qw6H3DzlxHosaliqulDV8EJUXbTMMxFJQokXDJEwkZSH0wMLRcT/XwjPVWg3J
	 Suul5qwkPPyKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF66C2FC14
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 11:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169227258871.10835.2466083238357796947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d77708e03790f7bca9e4486aa8fbd6728fb0b8706fb83b67dee3b894e15285
Date: Thu, 17 Aug 2023 11:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692272588
