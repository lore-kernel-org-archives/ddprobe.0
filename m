Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D76D7464
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94FDC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687774988;
	bh=kYqwjpAP7E7/cGOms2P8f3lB+8hWaVhm4IWbEsbRZ3w=;
	h=To:Subject:From:Date:From;
	b=suppIRqPpvVhWfGDh8WYv8vbwTQhK6wwYzXDV7/4JRIi8ZIvc/dna8bhcWQUbe9MS
	 mD7zPYd60SLasFbktPSigCU+2pKzAZsyguV8PFV4jIot/1q9DPKGs1k7s2dUVx3MG6
	 IapJfhoWSDPNrMEISnqJDXPfQYXEJBHPC6AxUXw3VyxC1VSpjCjz9ySSP88aKr75Pu
	 HJzCBUAtKXKrupdd0z2w9JXs5GEHb+N+oQRYY9GRfkPS2erByA/mRZTTsWbPTVDgob
	 Pin+dhfps3bniDnc2e3yqhmkidaTnDJgtXh9AciVR5yGN43r+kh9ooPj/2tVUngPwh
	 T+IGhzwK5qAXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65D6EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168777498873.14605.10350140862774367707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98dd54c3917a48dcb12940b7a75556d0c5e2191a551b3e748cc0f87aa9830fa1
Date: Mon, 26 Jun 2023 10:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687774988
