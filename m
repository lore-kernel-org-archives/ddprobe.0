Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798911878
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 06:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C7FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 06:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686379145;
	bh=tEtkgb7dTb5TfJYhcWg37xRDQqxNvYaHYWAOLjsw7os=;
	h=To:Subject:From:Date:From;
	b=QsNG1ajtcz47a0B/YzpJaJ2GucL/tE6SZvs04xMzwni2y36dy3w3s7WPYdFD6LARQ
	 DZNfj4v8jIF5uKcCxDKbhTHw3iVLlvJP6ifANENzzIl4zypWdvy/3Rz+bC9ATpe8i/
	 TjiB9MI43GXnhgQdcMz92XvLJ88jOBEOV9EZYxyFQa/piNS0W8kEUqa2qggsu4LVLo
	 Ig2i0Ko47M2ljua+Xy+jXcWnvXmcwDqRg96AWWQC9predC0d+Em6GYwOJX5YTgx/w3
	 0BxK50c5dheptQ/1rmFqOoxjnbFHW+4Q725n7wtEWAGRV6UnCu2EBm/J0pu9nfgHEi
	 /O51rEjXhT0RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9593C7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 06:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637914575.25115.15699818426989108684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409d343f570068de2b80453a013be991fb751d5777b14195e35574188800bb1b
Date: Sat, 10 Jun 2023 06:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686379145
