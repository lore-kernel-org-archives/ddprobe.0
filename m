Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D2B53E12
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnTDlah2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5F8C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702328296;
	bh=Y5Xqoe+CAg/bw6fKkPnsspbHDYQMJLWs2bdPzyndxTY=;
	h=To:Subject:From:Date:From;
	b=rnTDlah2RDKe+cHgV4y07viQ3Jkef1Nv23EB/HcbhR5ieiLJZxQuJ6JCygIJOiQgy
	 HYXr37GaHIpFqcaqhVDYQEAqjmQVq2EBNVrGWYwwsFyO4gpyt5CneytMMBvhR1G5qB
	 Nxw0qdGB8C5YWIWlOB0/D5c2cefBwgWDVs216G7mTPWf7i6LcAAe0N4H6Ma7TvF9NP
	 uozbNBWMFK1kug9SefnDzNk2TnuCozG5N9WL5OQBzvcDgvftbso+rsPI+pYVc1AF7h
	 u8MIKVNItzEhZ3WN8q8xCUbrQ8qYjYgN08YWDZJhuAa1NGJuQJ8l/aS3emZX0FDkPp
	 88aDtku1jmpaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B06C4332F
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170232829637.25900.13414513973436811198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ae99d4681cb2122d4900357b7da06eda1ea8f9ce53818c2851d98dd2d1f517
Date: Mon, 11 Dec 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702328296
