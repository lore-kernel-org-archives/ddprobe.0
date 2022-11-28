Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97288F42
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742D7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669648254;
	bh=b+peLmtpfn4V0Wg7gG3bt6LvAh5xPEkD/iU1cbtjbg8=;
	h=To:Subject:From:Date:From;
	b=cXVmOwDz6qNXsPnhzh2iCT9N4r5Yad6bOkMkAn5CRzTpiZc0L+iBQ8sOzsuzEZKrD
	 UwaXGP8aYQJ6nLE0EoMDKuu9oh3vukkuKttzvGrWjOdBm2wLYkhdjJ5j6puXZzXJ/d
	 Dv6EhbQmCLPdYP0dTDxc81l+FaxKet+kdcdi4k51zpSjJzaPoFOe/r5sy0TH4/v+ts
	 UazFwYFUk1sjlfc4vXiI0wM+cQ8qk0dkyXNuvesWtVPrQHQZVHDfbEIGmO0zYD6LMf
	 8+5CybRRwEaF8PRMyE7CbmlHeRMdz+bV0BkU5o4mddh3zg4y61pHJCIPH/tIZEr5Z+
	 uoaytCdA34h7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B481C43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166964825436.12994.15255831778788908534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117b111542b0b9249a5c4c29cf4d0aac90435c1e00db8aca98f1a574550c86fb
Date: Mon, 28 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669648254
