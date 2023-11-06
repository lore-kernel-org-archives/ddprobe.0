Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2936A29D07
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ni1C+hZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B06DC433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699313296;
	bh=uYbPyYq9In6dsylcAgk69Wl2X9SkGpSxwcASkyA+fzY=;
	h=To:Subject:From:Date:From;
	b=ni1C+hZIXKRurIGYhhjU2Caqxfj+42oLMouUWBe1cUqkzTBTFc4+ITka6F+Vu6Ygu
	 kHmSzCR3dc6Ang8Eda5U190oCWQvvpf3ESVjdXwY5BjIPQWZOz2w5LfcO6NGqEfk7/
	 vNScbpIDAca9Tdf/bwQ0V0VnZ5qHDNn10ZarzePobj3H4DRCZu1OLnf0EEabykWZWR
	 0M/y9HUwYJywpjL80RA4Q7VkwxVpkr19oFmxCROHy7PPOJ3/X1mmzQrBk7oxEAT1nd
	 r4NwjzLbi+qVdH1bA0ejiyj9OGsP2BBmMNPgH5u05lTfucL58OpWZONpmWlPj2m2xD
	 51zFixu3m4joQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 700DFC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169931329645.10367.13351540928921661254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d169282c7390944b40636f0c4afbbad8f7686923e399cab054f55c927b42a9
Date: Mon, 06 Nov 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699313296
