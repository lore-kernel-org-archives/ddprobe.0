Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AED415AC
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 00:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED076C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 00:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682642526;
	bh=omC27S6hEkzZRenkCYYGCv6TJppJMDVRTPVXUsxx4AI=;
	h=To:Subject:From:Date:From;
	b=uSqLpZ/su14BFURvDtTnVip9xf3/XcAyJ+Idd/NgudbQ/0Ql3yoSRDYJBgRdlVjgF
	 hc4ZwuKwQZBTlMVxhJRRH96PGjwYs3qI3ec2Uvp1Dkbk2AON60LU5Cbasdlj9sZk79
	 Wz1z2whxEeRN6rR8S/RLSRlI7KQgommvK4L9tnzuaO96QzRnsX1o18z8sT45ISpTGQ
	 9AC0EHUKGDkHt+bJrMhaeVK3JoDf/ryprmwwxftH+Q3B/hRsnm+xi0dvWEKRwAZEI7
	 KC/JVkHrxgCsSJqETFww28FOcQYyJsiXXDgx9OXqkzlxGBo96hXgKM+laFYnla2eRk
	 BkhhSbjCl/6QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4609C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 00:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168264252586.32577.8495303467281051387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa8673ae4c6df71e6254f7af156b10aa64de1bac07e2423a85dbdf036122ae2
Date: Fri, 28 Apr 2023 00:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682642525
