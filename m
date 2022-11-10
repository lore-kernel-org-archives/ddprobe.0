Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C46138C
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70833C433D7
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668073854;
	bh=GhMIASPKw9uBYXGEBfeD8Ub9GK9lZ0odV6Ic9T2EdsE=;
	h=To:Subject:From:Date:From;
	b=kv3rAoJOkviD00M+h9TRu8m9I8Dlo+mhoFYufBysb4FD4AbzxKrYZfQjKvWmFnkqp
	 dcbOdXWC9VBLVGT35FTI16bLlMumDe0CbWCTnyi90RfUgmpoivyDhUJRctlX8Rtabn
	 +gx+dJroEYqlL8RWedn/499QNgFuCFnOv0lYW1MMU3vzBStcSH/i5PeJKFbAS1VEH5
	 z2YMp+n9uVKU4O1L9VuYf5tznhoojTj2SRbIrKqxv7yIbMhfC2PJzBmXAZNgYnFjRd
	 AeAfzXdC2CZQFBDlBXQAUxsTroWAompfevUu8FQbgiHX5LufKwYEpdWwiM2dKZQA/q
	 7BwFytLrdGEiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E73C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166807385434.17023.13271859099618648206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180932b92308f09fe51451fe9397e29ea64707b3526869e53f12243eefe6c013
Date: Thu, 10 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668073854
