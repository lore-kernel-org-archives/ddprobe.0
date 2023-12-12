Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076D717989
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4lOC/sk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A7BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702370296;
	bh=AClCMSXSaPGTedwgm4tipb2AC75OQxLjeJwFVYL3zIs=;
	h=To:Subject:From:Date:From;
	b=h4lOC/skonCK+DO6o8CLI7fTujSZ5hL9l+lk/e5WShXCeE9x9MwvlAJf0fKS2bdhI
	 2/2BYkjrnJ1vFiuHMGPlTJ9j/kfZxHI2nSCypSLmWoA9E05CAK3qpCEQGlklcExP52
	 qYrFl2Zp8pOYCugwOr1XZqOQVwOPZ9DVxx0fG2hWmwBfQ/gcC+5t8v9BGSBFcYqkeZ
	 6RFQCCmDDrQDO3vpXA7cycek23CSgA07dzwf8K+oHcigXKyH+yjBXrAhB/O0MItNEr
	 +ZdtN4uTJ8UPg8M+gfa5xkmHd7SK6Jgac7sXz6g/mSGxLt2CUmXwAC4AMiKD3Xp6eg
	 ez5oXoPhlGX3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B3BC4167B
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170237029639.12306.8637966038478967714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7658d784ac8e10d757f9bd42167111f82997c07f6bea3843bc667e766504af88
Date: Tue, 12 Dec 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702370296
