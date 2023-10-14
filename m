Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B074F4F8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 21:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuSPt+2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75B9C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697319428;
	bh=TrnUXDgEKVDTXZo87tv03uMCqxQc4OvGsJwiUba1UFs=;
	h=To:Subject:From:Date:From;
	b=OuSPt+2DQvSOkTMrpelrCV7zjz8B5C+Gg8YPN3E04r1qfzAyiDh52NyTmfKm2qmGP
	 L6MxA1vhXxe3vnbDXpb0jm8n//S8/GtjYUy5O4Ki6UL0HqO175LCe7Ah73v2K5O/Mn
	 uE00Va9/C1IFRnSUwiz+RsSVXVjrWZ7KhqjZYJ2Iuh2zHMh/LnXywtsWTtF4ZRrB8t
	 5hc7hZFYbUKNmcLXR9j03+gSPMszqWpSxzZAkdh0ohKgQy5CKnd/bqP/rJ5gyXRsz6
	 nJ6x25VKfRVPElpZwRMZ0Dds5EhjKEM4dJjtOEkwMX+s9a6pwRqMzIEVrsSuM0fIFT
	 KT/m+qxjbVoKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBC1CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 21:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169731942870.16927.2211463039437776517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4931ec78ff445cb18911720da604c5c42680d6641430cdd849ac6cb779ab8175
Date: Sat, 14 Oct 2023 21:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697319428
