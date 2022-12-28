Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8BE1863
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 791EAC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672241487;
	bh=Z6cwfOanHKmtCCfqVLsYNN6wWI7stQKLZlv00NPXs/k=;
	h=To:Subject:From:Date:From;
	b=tmSxkJkuYrppE0tSRbg1fwduaIPkPKKSLnF5y0EswJjbCPTV6fJBrKY4cEj9cHLqA
	 SESn4P4nFSAnp+GjsbZ91bVXxs4dAREiSnbxGr1YdRjzzTuciRlVXUuSu8gVOAGmRQ
	 F0eB84AfbI4LiIg8zuf513VlApROQ2LRF8YwCv3jMVu+zPy90kYymaAdVYCWQJE/UT
	 gnLNwAiB2psyZxqCEcg7vB1IQ4a6rcflVNr5zrPm3upqkEOzZCVTvZZcxvzRkIdhqB
	 Tcbz+EMrMbmqH7z8lYFEyPcUWdLEXFgWpUisrUSOV8QIvFQVK8AIZCR8KQmpyJnOc7
	 LKbnLBqzNv4hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC84C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167224148738.522.17643647104091576478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6eb57a96143d426cac4ed93a06363c533c11b8ff1e6ab98fffa1aa2d2207e4
Date: Wed, 28 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672241487
