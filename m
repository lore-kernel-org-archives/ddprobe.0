Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3246F11CA1
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 14:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0E5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 14:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685198945;
	bh=zU9ugSR504H+WR9J7sQ3JWTwhudz0Ndf00ir5Bep8Vc=;
	h=To:Subject:From:Date:From;
	b=O/2KmuOr6uk6WFB1cLZyqGmrPhyy3ilSwdmR6e88jU4uCDlA/dGjEzz857IhoRS5d
	 C+nue10CI7iz17bmcSr6sFAdFnmYYISenoe4LLFM3q8n5Y0tbNJmun/O7v8sCq8fVS
	 jQtsd7m1SAyW3j4teM5aHohyIVk3e/X943TaN3nvEWHQpD4WF58XkuUgPP6Was/kQ0
	 xKB8mFMJrvhab9ClHqoVpNPBY0wFIn+nPuIOO+MRNe7GaD2VWQh8C5LqDwoqq2XZNa
	 0tHisSimz+HXx5iQMEbwNbTiY3GF7XfgRR0XtyRd1NOqivcVX7A31i0sXXqTgviHZg
	 PeYG//cmwVxhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC98C77B73
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 14:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168519894575.32205.1357206522062269635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237ea97b5a3a42f24d05b9234e51633bfa86fa4a84a8ed1ec550f4677257de88
Date: Sat, 27 May 2023 14:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685198945
