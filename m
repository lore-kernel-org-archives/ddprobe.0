Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2EB364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779F4C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666488653;
	bh=VMFEBjG5LjXPp8gRAb88jwMKeXKIxXqJad/iS9gffUQ=;
	h=To:Subject:From:Date:From;
	b=LDSU5pItKJsJeatms6EhQ7qLNgqy7NcJppKXxhMeIKzNxsJPPKleN+U6Ob1Yt125x
	 2vfFeDbrS8pMiHakLTnd/xCdVfOnlPLIu5J1vssP91GCDG1tkSDK1Z5Y3Xdd5DO6s2
	 5oB9ogtzTSxS+H+bXXeGsb8KKPEqGsPsRgf/nI1rt7exIH0dA9Y9RBEfitv2Vj4Zqr
	 H1Yjw87wx2Qg8uHMLy4Mqzhg1DIq10zlkzoQ/cC9GeptsNrXONIwkAusKkXP2FPF19
	 TRV/BEN5p/o08jgZ78GOnoRstaDxtDIfeERx8cGrH4nJQYGFt+6ijWMlnil2AVSWQU
	 sa6W7oB3jyrzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57232C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648865333.1641.17707688208430805054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770a204a8dbb9a98f505dbf0570b09f4ecf0a353e18f7e326d0ecde72d063f13
Date: Sun, 23 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666488653
