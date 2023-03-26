Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF3464E
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 04:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ECAC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 04:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679805725;
	bh=qOpfOQPViodUTr2dKIz3qydT2MQGeC47j3c6bygnPTY=;
	h=To:Subject:From:Date:From;
	b=CuJFT8/eMVvFWVRYxtOfmQXh2pJG7CSmPAaGZ0v3OVSLpc+2rKwyO6JmOfGC9RHHC
	 LbW8LSE0dEGOaZlXPxQYkmv/4VNlHc7+IIRVhL0LQvfqFiECUgluhWItDO/l8MjLL7
	 hn0GORuctGe0vhCfY4hLAplY/lXHf/b7vgo2UA7lTp3KAPn1Pdc4+jdKvfEGGy7sNo
	 +3+mTYXB6tFCbbX2YGdjTm+uiEfaUMWy0FfKDQVcdPNh0taiOmghN+iXhkoJqeQ7RJ
	 0fiI8l5i66t25pgm4ZQm/nEvKSMrX9xuCwIczAU5Fzv1bSwayeBM+mqLr2GjQhyb+A
	 OB6+bdeoRV6EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C92C74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 04:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167980572574.21260.7725660956187606364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd888aeb372c168b8e77d81c0bce62e2a388bf2fcb86422501c3c0cf9cc32175
Date: Sun, 26 Mar 2023 04:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679805725
