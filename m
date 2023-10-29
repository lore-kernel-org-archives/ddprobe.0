Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161E2B645
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+ycXzQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FF2CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698582496;
	bh=FA8xVRX1hc9wLONqBrFJXKF6Vopa+YuAHhwB2A7f9yU=;
	h=To:Subject:From:Date:From;
	b=g+ycXzQnUXX0zCXj0Mc3su4MOg9R5C2u985iERz4G3f2reXY9yrYFKcInsugh/aSA
	 B+nk+BWEV2M5W/AJstKlj5NjLGjPDouV6Wto9fl0zYjAbA5AJrWCiUJVYj4FN8sUqb
	 MPS3ZdkXjhOl6Vu7BTElqFMWdks8LRiegZ8iAMxRw+/79qpBSe8XHB+0bnxjo5FHdh
	 vv8RZ6IRW/mFt0dnFW0caOizVky1hANDZbw5Q0nsxZvBVx+WEpnyo1DsbaLE76T20/
	 7F3wknF9RlHy6JQ+0WyDs+KFQ6wG9HuOUkyXHWL5OUNA4UTnZdaLSFB6r0tshN/Kd6
	 9NyXky3xMVLXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70294C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169858249642.2464.415733146777021300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e4feaaefba4619cd492f0c81b372e5581021737a121871a67ce1bcaed25dfed
Date: Sun, 29 Oct 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698582496
