Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BC1BD10
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85296C433F0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673476287;
	bh=XKq3cUxmm04xKJlu2Xfilvlbshd8GO0t6E2Uyv6OKIM=;
	h=To:Subject:From:Date:From;
	b=HyoeGsUDRreQJkyY/JpQBQIKd0ZOW121Md0pUAJavPGs9ctldP+Mv2VWlXM4pSnIh
	 b5/b2LacTXbglfVOhiWbUbsuGzyR8YpZPCzEZAjGNRT7TE2RceGWO1sM8FGfRE1/cj
	 bPmIMTWoj12fa6jMYAs3PhqSimLazdue2zY5IYwEoHQkzdoXPI14X04lTo28it9RTp
	 E5BzvcFLoW3eUro6kYFw5TDEARutf300zZKX3b23Cg/CWHa46ejSRBG2Rjhwn7U6de
	 ZfeEUU4jXNBaMLtPI1ijqaqFz15eak+RxqRr0c8hVsvG+wvcGLLgViTTyDP7Z09DeA
	 MD3CkJ5kSb6Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C7CAC46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167347628742.14438.8319149597282092649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8ea07866bc73fd39018d325995dfb4e9ada8fa70d6823ec2c11387128a47a6
Date: Wed, 11 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673476287
