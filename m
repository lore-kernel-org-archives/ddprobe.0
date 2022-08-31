Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82E9804
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E84DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661945453;
	bh=u7WAO2jlSojtlMepV4upegD1FXE3Rwzk71n+JZVartM=;
	h=To:Subject:From:Date:From;
	b=XYAZGhGOcFvREqgD7/FzE8qQmGX37bSKehzKW/2rZqzZfrB19/KkCRInrmqiH/6x3
	 3mJfE9fJFbe1dgGt0n7/DdwHK9rpZJvzpKuPonHNnUQvBrwqXQdQ4sfFpRW1JSMt99
	 jo6QOo05/FI7TrHzfYGfGhb6Yr4GSK/V67HU3DyUtr4cWTePqjkVnjeTh8tBAKYJCG
	 7ElpNfjns9nhXwdJcre+N9Bay2ZrjEA6zrUBrlCWPScqeulcpCr7yIaS6v19EmK4Gk
	 qDRLKWMmYCMaRc5hUxAIW6jyHPiW4BGxEGCGTRtlqT9GlrtoXIHkenoa9t0Lzpv7aB
	 sdh+pHkZtzLSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B964ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166194545336.24303.9986600445022318609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a218db4f9a3a0e6c7688ff82a5f05af300afe6e85fa3f464668e9db9738009
Date: Wed, 31 Aug 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661945453
