Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D643209
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72402C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665420653;
	bh=ECDchrEwzZdfn0X50qzJawwGvbbyjslyl3k+s2MM2zw=;
	h=To:Subject:From:Date:From;
	b=vRu05pDOO0qXL9IOa5+X1mFLJg2zUKdESzz3g2+6bzQ8WGLHiscgU8YUEEDGhFRt0
	 CR8j/RCWDD4zbdNkqRqzzxGXPPLIajZ8Z37A7S7h7aJZ69C/XImJT7QPUgrMWj8mfi
	 nQuJoWj8CFCDInzHgF9Gh7nNLVbAe0YqEqJIIY7hp+U53GlkgMxkK1J8QXOFlZy4/C
	 7g2YvvFmgZeSY1/sfCtyt+6P0BxdLyQcOpTFw4lmlsY9rLmvrY85gBNbVmujGO6ILc
	 qrGrsqG0wzrpGsEofDY5dP7Qk6/yVp2VzPCE8vdKm3Zl3b6afjH8KLtsp9UhCU4r57
	 wZ/uCZZmHIt9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56169C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542065334.22466.9520016252760455886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a938dc555238bc76becce3d88dbc93b25847cc4a7ebc908bacd18f1e7aafaf5b
Date: Mon, 10 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665420653
