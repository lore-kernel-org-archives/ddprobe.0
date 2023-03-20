Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568DA7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 16:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE31C4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 16:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679330826;
	bh=uG7SmDWkTux+dy1nfw/qsuMHODt7VUxtZzTsozepDv8=;
	h=To:Subject:From:Date:From;
	b=afYTBJW8V2ay687jKA875dtmdPQKL+e1y9GIm9Hc1EIx0iiVChT7a1w6oBJYIddzk
	 kUKnnFPGh3hyArzlxKMGZZGoM9hn0YI8F4IusZ/VZCTErWC0GwbMNICPTwsXdKcBCQ
	 TdRcY6cpQBcCVPcH/mVlrxjXYQdsTzYM/IbU6iQgEnZm2ugEpV6YNDaD18f6/defHy
	 ty8kta1dHJWDxr9Go9dYpjigk2s9wJQ1f9qtGzX3S98jBJVeRWEWPyCH9Lg+FmpOrW
	 mdVrwlmb+qb8qhoKuFPRgTKCq5nz7wWhNlSSmFaQ2crfz5e80omLEFbn3OJrRyW7/m
	 Z5f+hauEJycFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C973DC7618D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 16:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167933082581.26196.8390830906200861945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7924530f7df1ccc3306926c0aeafd7bae041a055e1dd6add664c81c206832275
Date: Mon, 20 Mar 2023 16:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679330825
