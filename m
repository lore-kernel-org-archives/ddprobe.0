Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2133D6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75FB2C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661523052;
	bh=/BBqGR4oeCZUEKLdxoLCeFD6/mADDJLRsv/RnZSD4Zs=;
	h=To:Subject:From:Date:From;
	b=DgY44My3TUYkyxsQBt/PoL8pkXNSquesP3ZqQBcaVXHD+OZLNmWqCucMtnI4dA/Qz
	 0oNRDo3sZWQgTRLAPMMvOQm68yUwo609jkEKRUmDeZYxh1YYM8bsQDalWwG52bPo+y
	 30SdKdd8WVGF/6TcN0gydfgdEcB7Lit/Gq2slgnRy6LIomRDFosBuCnUHEJJuLXd9w
	 rrqGKm3exVsELvWCjKOYDMQ6d+v2I+/eGOQ+/3akvZbN8WLLwVpTb6/pORnb+p53D7
	 hW3ExkJessPY2ihCQi4pyojV4l6EZpbhMV9EreeUI1vdrLTOHH5AhJqVvWokR0aYbV
	 +JyF+Rk+uxSxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C10FECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152305236.26926.2198084568769200786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3143c14067f68507b069e0fc9e5abdcd148221e65866624df2960dfa09ca208
Date: Fri, 26 Aug 2022 14:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661523052
