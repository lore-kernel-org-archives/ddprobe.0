Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C108515CE
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 10:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A1EC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688640428;
	bh=u8Xs71bBLJ81mi8IeQYS0PX6Uj40auG3A7EHOHwRFsE=;
	h=To:Subject:From:Date:From;
	b=itOWxWlZ30KY8iBZEqibRQ7KWtho9WTVGG1u/kGDRUgZaet8FadWwvioIrgaXwS0a
	 6UYTyhQ27AigAEtP3a41VXQSG6n4LHHf0KxSk0DY/zTh3qIxegYDwSIJz0ggLP/S7A
	 e0uCJCrSCPrDyR7/5C/bRwyjFbLQU8WtY/pZuJWqSQTQSn7LUfhf7cYFy9Z9j6RX2R
	 nVeJ3f4l1t9dHP6t3vt78ZNtz0BhgHVCg8P2OTbTanW/b4EDGKDbOUE/8Hacpad+qC
	 EwqS28pX+06KyXOh92R5rbBIw1CKLo2RJdxUcl/f+X0zPHqKkDu02YJq92/tezcWwA
	 GaoAcoeDZEkAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5639EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 10:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168864042873.25075.7735776020652336776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc20b1f4aa364ce4c8c3b1f4c4acc435dcf56466e980957dc9785e68fad5a8f0
Date: Thu, 06 Jul 2023 10:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688640428
