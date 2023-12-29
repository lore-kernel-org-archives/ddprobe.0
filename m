Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C5114267
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlgpk98p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 882C5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703882896;
	bh=zLuxZxIM4viw2/+lE5iRGUudx0GodeZ7Uv/G1+U/Y2Q=;
	h=To:Subject:From:Date:From;
	b=nlgpk98p2Wr75KJL7IHtQRg6Xp7FHAfCKa/E8K2lddYMchi1Yxh2Ji4u7Ros2k8tg
	 rzq8cXTHiW+Wreg6CpJu7O9IGWt6uKUVBI3y+VNYVXTMKtLujuvkGxdSeUXB+rMzsT
	 sxlLqyLky2Si73SWL/zGlLYkoTifqMF3cfc5wwRTf6IOhyZRaSDTRxjE1QZIaqXQ/9
	 Bbv+Ejn5CLVE10pC624uKCy33h35SaZZrl7RwM+/UZhe3vHiqyUr5XeZLQKc4EpEn4
	 6xXANVsrQ44k/aQjU29bdHmKwT/1ldYwX5+WGUtmDtVhLtv7iatwIMK9t4uimvdjKv
	 SGA6vq+K/UyNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BDAC46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170388289641.17885.1358741809754400118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e483a72b41cf2653e960a108bd8a34e24aa6f8cc174017a12c94556624b0814
Date: Fri, 29 Dec 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703882896
