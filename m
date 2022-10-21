Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A957E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7B8C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666345253;
	bh=fLMjlVOAlzQJ8OulPDnLnVRt2zJ+UFcvtJzg1vPs1SA=;
	h=To:Subject:From:Date:From;
	b=ueWgthxZbNLUnnaBTD/xCXJzpEgx33hRgYaMsiDfwjjuzZloJXtUnY3+/bmd8/lus
	 iyjqUXE4EKG+zErdadRAdzgxufShAqTD5xYSxtzG4uj+F5pc/lf+ploAaYLsOeM2DL
	 jwtiahuXZKaGytMqarC2Q9wxyVHRjdYrC7CCCY0i7PJIMWaebcHtSeh0G/TSJ9jYsp
	 yCCVSNhI4DJfmTfBjvJtcyNGxLrnw23fWYihnadqH5ofclgLMFx+M676/SIvsSQrK5
	 KkP8xDYZAaNfeJ+lkMACiFu3yTcaCqp6zBZjV8hsNfqWoxhK8DR5muUWKM1znZsMYX
	 GX8N1ESQfl67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F194C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634525338.7844.2482461969138192135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62bbb5ffd1a984a7eee8c049eab64eed4cf3b7edaa26eda90af0ebc4dbd79624
Date: Fri, 21 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666345253
