Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35101163
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 04:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D47C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 04:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676264045;
	bh=TjlCUbAuHn+gYIuxz11a4LGjvGwnbWd3yxqGyc13EVo=;
	h=To:Subject:From:Date:From;
	b=tvi+5w6Db8FPIkZw4KysyYBYmT/aVPf8GWhf1YRfBzfkL+BYzCQnePrRLYjwJn6zh
	 mO2bY8GbkZ/Obkz4X0qibycP+J07H6G4tO4+B538C/mYWtqLHdWAJBYbXwLnZLfwVU
	 Na88PIWSnAyQeXy8a6dc45rqFZqXGUFsc3Q9OoOiIYwtieKDBCJC7bKrb/YOBHFnSz
	 ZCb4cRjNHlL6GTnt0UVme9BZXjLD0sx6b/wiELMrchEYgrSkgzQ35VOHX0PIi+A8pN
	 57zRveNq0xOqga8Lz98i7oyybaXKp+sllhjE9Tu3crRAfXLNfDPNmdG7ml4Psh7G+r
	 pygWCE3DOQMLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CDCC636D7
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 04:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167626404574.6231.9051067813663148099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5cd21e773a3af4ed08a9ab81d7026029d19ef521b39e43263550624bf5d6eb
Date: Mon, 13 Feb 2023 04:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676264045
