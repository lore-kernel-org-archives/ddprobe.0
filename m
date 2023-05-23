Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383011841
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 00:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6101C433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 00:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684800185;
	bh=vn7sWkHA83rs9t6DNjGZl85yvbmIqAif6rP4h5WXfac=;
	h=To:Subject:From:Date:From;
	b=fRbArhNiFCHKc8F4La7N8aMrMZt8yNKttd5gXuM9zfLQKTf6BxJinX0Ooohd4ODn4
	 98Le8xqenzQeCMr0B8+RzpvDdrGONJNbWvKwrLqSXIvWawHOPr7uOjIQm8TjZHtY1G
	 ICGpEZ3XbzKb5LtZA9shEpDnf5tCXN6qQFtko5LlITN/nGpfJ7ueRlPZvtL7gm+9Dz
	 8YwlLPjXy3bsS8gpnoGuRwlIYEI0UMNVs1Mj224NhMtsYopE70FN8+fm6Z2+GUQUeA
	 eOEeI9eflCLNz5zWGuYe9rRD58Zov87V4Z5tXySEeuq20Sln3/w6Z+B1WQaNF+00F9
	 SlA+YqPS7qktA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B48C77B75
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 00:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168480018578.20280.6231506498551028704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5634c04d5e7306231e6c59b971418c9a48cfc27e38750d335c9557f775a26e6b
Date: Tue, 23 May 2023 00:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684800185
