Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C25729AC
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 22:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B5DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 22:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674341525;
	bh=/adk3CDtTkVoLcWck2ZOpdYaX6mJmeA4vvI6Y4Mb/HU=;
	h=To:Subject:From:Date:From;
	b=t3a/sAlptpa/U1vgzsmQX7AJzQI46rKpZoWpWhPr0uSYECCOTOPW+FJ82GZ4SelKe
	 wd/WQVRuNwy/5LEBY+l3ITTcSXZIjLFFxmgK1yl7J7HXC/HxGsFE+8JJ3HMDe7nilB
	 Bwr6JxWRVwQOFiDb7LRk9Qx/S33pIV7zbYxdMjU81CdGoFDa21vbfcZZdeKcE7K5MV
	 cIyo4mUEDFg0fIZ66gSKQgHQSHG6O8l6PqLsI359gLLakFiFPjCQnPKVQlH/I1zowP
	 qrI7CFcGi6+PKEmXeplxMBIzXcjUQ1RGVkF/EXhbRBq67PG0Cpp8iCDWq5mWb7Hiq4
	 XVABNL40wOh9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5249C38142
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 22:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167434152573.20729.9834562270901882739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33ef5ed020f764ef66ce930ad9bfe2f29b8e61ca3f941e3d88a49e7ed140a20
Date: Sat, 21 Jan 2023 22:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674341525
