Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A6BECE
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 08:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB168C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 08:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679820125;
	bh=fAvqAY6IiFCIe0q78l0IFRIWpF2gKIdeAOlZ5U5Uzgs=;
	h=To:Subject:From:Date:From;
	b=MKbB/L9tsmXf4RR8fSKSOO5pgm8gHpkR1burzDAY2tNyWucxjVtR6S4QHjRUD9rzG
	 c6CDLVx8Ltxog5SvAvwkbjIxKmS9Y9TfjpMppkRYgW3bBB1KUgfrjqeazgXJNh1r0P
	 BfQK7pEG0fWEIP+lJf9F4ZIyiJr+NXEH8axhiHBVhSjSTUfZy70K2mKqEmvFTAKbUq
	 wDipQ+/LnmBxA4DP3zg4wgTi0qpVOZfLVqpJvaA3KDYJ41oEAWLqxlXwDyXM6ZICSg
	 xNXy5ui0aeBBQfN9blyvZLIOSzuvDtbtrISeei+Lx3U91b+d+eB7TkLU+I5eZwGt8N
	 lrSjlzQaBXSTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC195C74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 08:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167982012576.28785.5089461527545147331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a23ebf48df2a688707a79e01dc9b0bce2620783b7ee6db2d071d351cf08cf0
Date: Sun, 26 Mar 2023 08:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679820125
