Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F300B1112
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97D41C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671511887;
	bh=JDjiuZJJ+181RZ9Z3dqk1PaySAJUT6MuwnEZ30Qg+j4=;
	h=To:Subject:From:Date:From;
	b=BxBAKpevl822wf7vq88FIzyS8ddjwMwgK25TMc15HWOSkBdmJwD4H8D6mb0y5ALmU
	 8OuGcpwxoLQsMWX43TvP67sI1I9Th0oQ15cQGsK6BwrGxfe9qV9M0tOn0NOqgJNlBz
	 h3Qfnz1kj+yvKSJsF1pRJNacVB/HCbDzTgnxcodrYSO+2C0z1SaAao0qlGopNW6x96
	 YTKRZ2ls+JIBJAsA/n/v7oyve+mMYRk+tNjPoUdXYxghLYxhB47oX/SrBkbKbWtkEJ
	 yq6SnMbawA/VqGwK3A2Be2KDZlp/XxDgYAQSTf5Qi0+8eAYxuDEKnpZr0CwuTFQY2x
	 E1tYm3k6D3+Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B4B5C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151188748.29938.14895929038599184303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b054d1650fcb24eeaff532f90d77ff18a7c2c295e1b92f2a8acb3bf8092637
Date: Tue, 20 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671511887
