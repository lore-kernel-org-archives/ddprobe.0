Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22A12107
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABF2C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670431254;
	bh=EJre3LMtHdBEjnDrA70axJIiNGPtcHotBHNA8BXDHCo=;
	h=To:Subject:From:Date:From;
	b=iFUbcyr5xINOornW2Ql+YOpnzoF3ZGnl+1sAjbQ6BIvIVUe5FMhIXEE6aEsyrtMdu
	 DXAeT8u/GoSWl07QgeO2rOCPFn7vO9sYeGl9g5HKQeD7icV5X9nsfpZbYKCYJBf3OI
	 0ZoSd837DKY5ltanJfy8z7t73DUwe9PnBgOMsE9g0sk1EcRRlmEVBL1KWDnY6eheM9
	 sTC0Xxz1RrlDiojUiNSi00Rk+qjCqt0lSe+/ZhYAZ1JBcPGsw65mb6sDTgy8qUNfpm
	 Kpq3aawvvQSUWHbCior80Vnl0Aq+N6H+tUHLRWyxbB3oGk1277BzKU11MhhoRhANBf
	 aEfZkT7cLKFcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63625C4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167043125439.21552.5047467673780617439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94964f4a237916ccce4596c969609decca611b07da858d651587d7fea1cf773
Date: Wed, 07 Dec 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670431254
