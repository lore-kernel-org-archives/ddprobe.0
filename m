Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D46D50E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A393FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673731887;
	bh=grtj3aA8q29SvX532nb/U9cEgjQefPpKT5B2vL1VDz4=;
	h=To:Subject:From:Date:From;
	b=X1JwblpCEK7IZrK+AEwvOCtKrUbamteKJicTfHihh+W6BSTS9m7I7NPOWhlygKbKx
	 WK3O2SpqZwPWkebeoUqnBaNYIGFcFl3+cMt/VJw9KBd+B55oRhnQz4kYcsz7AGYIsR
	 ANbkBBR95zfBY+/6fxqyi7gIP7i34zxJcyrvgZyCAVATbuhqqSm4lBC+UeL+nKcVyJ
	 5mizc9xSO0fZGo29ioErNbvbLCOrVBNkJjmTlm1DAzqSnDziDVt42oSNhp7DXOgDxK
	 B/K90sZIVXdi5ksy1MnQApYGrvkrjf4n5h1P3pmicrkUrdQjc9H+4NvrrPtORVGOi2
	 170oQ/0KQlJ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C205C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167373188749.13135.15527445553571114927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b8c3d132721cb6e237f256186322ccdc28253108e18ac62e05c50ff3645ca1
Date: Sat, 14 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673731887
