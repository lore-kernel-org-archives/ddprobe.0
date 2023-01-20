Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9EA569E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 20:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF73AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 20:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674244926;
	bh=TvWay6HlLIEQQDwzAR9LxkgQPBF+0Zl7HGd3JCbXijY=;
	h=To:Subject:From:Date:From;
	b=NaWZda40WCryeeoHHT+fKrVHmbSV3RzyJ3NSLYVeAW9abG0Ecd/Usl10Slods68qL
	 djNcbhWcO7tci8VP8X7HLPgfTFzJU5HTv6TcDpKvX1eog5qljYTj9L7ObkNmKHDYI5
	 IOVzbOtjPoBjaWuPPJvKMCvb9U/Zkl/b5zqmFu9nOO0hwWHb4JP58bl2/yzx7YP6ix
	 hEs+FOl/My0Bo5xdxEbjzX2Fauw6xRBp+5ty/LtPoCzf9jpUGLob+aJam6qhs4WHyE
	 c3KFpbIg08bg3yN2v7LaiVChFtZHX7eivFqF8UPU4GLNPlHLOxvYlEfNKv/03w62fA
	 d0DacV6OUzI5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD8ACC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 20:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167424492581.12798.10130467646983842937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa7d8778fbad09e25507aee27ea8f84820d2ecc900bb0d3bab392ab4b2f7df1
Date: Fri, 20 Jan 2023 20:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674244925
