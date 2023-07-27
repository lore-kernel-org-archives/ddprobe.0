Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611B08F41
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 20:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD697C433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 20:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690489328;
	bh=xy+h3CQ3rO3KSbmY+ddtfMj3KDrTBUAbbfXGuBMi5l8=;
	h=To:Subject:From:Date:From;
	b=Wr+FMBOj0wYM/1m8HamZplAvfeifWT4adpYBu6L7XYwMgQbBNlUvSaxo6Z4RmKE5J
	 SNX+2BU0LLJ6K+s3D3UptxKI3GQsjy/Xf4MSEUzsdUTtYdOe07DoyugPO39YLOaDvu
	 YZygKjP8w70hZaTSe1TWNUVDVF/vqrtO2LC3Lb5EfdVLAifGa1zkymJ5iOj1BdoZmh
	 pHMI8wr/MeVFoyz/M5THg3TL4IeF/JQn7hVnP3L4nl0W4QekyAmQSXPCD7qqz9+ymH
	 8PutcHMqDL06hkl7+8U7qC8LrRS6DAbd2A1uKCjSFj860YXyG4/yYslMxV/qAFcK0K
	 5qsXrSg0zkSmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B147EEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 20:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169048932871.29751.12021603471435722557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a09de1befb342bb1ee549bd7e9f4d99291eb5c4b031ab1f521b688b3c6dc6e
Date: Thu, 27 Jul 2023 20:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690489328
