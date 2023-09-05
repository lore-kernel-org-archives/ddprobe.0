Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DED4FC1C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 21:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3938C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 21:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693950848;
	bh=QkcACoF7z1rtj425yzd1wZFcPAijMzyw/UFr4WdCbHY=;
	h=To:Subject:From:Date:From;
	b=VhA/rJdxbt0aMYsPg2ewHi8ND9gwtmJ8iw+KhSBggYdrm6GIDgmGD1TtG+OFgVUnQ
	 ccfY+RLg3s2pw6A0vPRdJUrkUvcPjOi77xbYF6rVCnGrH4lUtJqpBS0gKz0zKhWktU
	 XqSSXE7Z7MrdFC8vx1g7vIofBzEgr0NAs1YQRVIIzJHD2KeoO0bgsiskivVyhpAXQs
	 kNk8H0RWaAuKThsD3RwLZEZLTYouba4JEQivH2mcoX0Fu2WuR5zbi5qot45sqyK0eD
	 /CBUyjwf/VSfqWWCayJXZLOYJthnW3ishr0g7kpt0W0kioVjO6M8tsyOMdqZp2FCQr
	 pZUpFtlDOebWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C31CA1019
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 21:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169395084866.3435.13081744332282281754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ddd096d5be1283ab1d6ebb06edc00446ec24ef7cc9d89a7880b56239caa04f
Date: Tue, 05 Sep 2023 21:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693950848
