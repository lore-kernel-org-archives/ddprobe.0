Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5E41361
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E2B5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673426487;
	bh=cFLqrD2MIurlnFKPECCryEk0Vj4pjkMmzLm2ERkZUEw=;
	h=To:Subject:From:Date:From;
	b=dHYfqRkbI+gLnkaZ62rf9UQPniH53FoeZ39bGvJjWqH1D0KgQeRrTRqDyIzf6jEnn
	 2N1XJ6dAJb9xYxhdYmSbNcmCQTbNM4LtPJBirYNTaAAQtYOnq+pFT64chJ6LEA0LDK
	 l7/2/N5J0xVohbkLxqDPx0H4K3r0qARiepu+8wyOmagAmzqEe7VUNRXFp8HUJURjTQ
	 LT+/0tKyO89VgD1vyafcUqUQnxt6kU/uvknMrvbfY12OOMzXCp6q67pDYDv6ouVQ/q
	 KOJo1avTy+vDyn19YURnId2IaGziXNviuwjElAIPmTbcNFatjgNsLGWJ8BczoBdsv0
	 tPhb1adNXI76g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FD3FC46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342648744.15098.17303741337694737604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c77158af9350872028ed75b41c6a119e7a0f249f54f47468a22120d4660b3da
Date: Wed, 11 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673426487
