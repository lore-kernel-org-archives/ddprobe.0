Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD3C3207
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 19:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D950CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 19:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674329525;
	bh=5JAJr7ry42RXMUMIldQ6zyHPmfweE9zmpJoVEAueJ8k=;
	h=To:Subject:From:Date:From;
	b=VKZs++vw/wWeNapiW3pRnp5FukFDeyeyYv9fpQdhyhk7HZBEbo7LTQhCrjrWLZaxT
	 SN03SuWX3WeG9Wa0R9b27k5svOA9FA+Pkj2DcLBralKHa8s8PEj75S90oqW8AXpMNV
	 lpmbT3dObixCatucb4UbsyDbCsAfs63Bl0uATu0xWOTPFcLAQYJy25KREWqItzWWzh
	 gaEGVMLmZOoLJzrva+qzlNQ8A9IqAPGMPdpRbNvvpDhEi3DmUaDG9Cff7OsW2Awf/C
	 hk0icOdADSqS6DXW8Qt0e/ILfcgOEug8wRvP0+4vUa7n5o0m8aJ+z+tWuQ0nLP2cD0
	 NNdVBneDN9ZGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC563C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 19:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432952576.17895.1407702020600581660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7037bec218d01eee1a647fadfb282ffb1175141a65953eee5a2a60c0dc5b736
Date: Sat, 21 Jan 2023 19:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674329525
