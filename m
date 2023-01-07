Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB07257A
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86126C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673110887;
	bh=qyAuFSo8yjNVE0hfh8WFZcpojbzXPUmfOzdKtZq7jDM=;
	h=To:Subject:From:Date:From;
	b=kmq6dU6wXdtB0XESz7XmX4MB7ifEqn74loK8cC11tsdF1WksnePeq071qwrjJzSWR
	 EoB6B54FrGhMkg13qqSshRYiU/wlKqp0idYip5evY31AnXdtCktWOPtvcgFiIDGKbk
	 TURyZ8FV0NBVVeR+KAfUf/tHPgfN5+ydDeuEebZiiAduQX0N1PlXxzkJnS/c9l6VrO
	 XRKDSWjuj4tpj2OFkiyGFuZKELQLt/txyNfJCYZYP0dYdDC4DlHYW3r6nYQfR64jDQ
	 MBY+LeEhOylnmBi7Xuzwj/FtBoSGeW9CGsTrG8iz0p/neK9YkhSzwrUUAEJWLYnqtG
	 WoQpHNMp4omKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A7E4C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311088742.2506.14605028984995231488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d7a7519a8eaf71da438564205adbd334fa9303de3b94c50efe67e59e82ba8b
Date: Sat, 07 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673110887
