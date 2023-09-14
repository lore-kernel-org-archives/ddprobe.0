Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04C010A1E
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 15:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E9BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 15:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694705708;
	bh=L762jECHsAZWZzOpNqbU42+n6G9N9XomJDhGyP/8RPI=;
	h=To:Subject:From:Date:From;
	b=udTvMTA0q6Zx0g6WtMTXcQA+EpQPgPIkRsD7CSQRJvOHAiv6tmPtTeb0NG/fdhavZ
	 +T7YO1MCpZ0m+XIZdWk62w07dsu00IZpfraR4tIEUzPS1azuTKEgSTfKMVKZQn6hhS
	 o/I10YHwgoZ7OQSlFBnFyYPvzM5GATIpF3LNv/Yl+heewyCpqQAziNLzpJBFdKo5le
	 Qot+Omn5IpURGiV0HfOQdoz5Ivypxg9h8WPycvQNPe9LNAWQBBdUxia/rZrW34vdOy
	 wJZs9G2P5j0QSHNFZUWg/c22CJkP97T3RsG/L7hA7bI+rJc06NxsFcsN/AvwRT1Qhc
	 1Xha3RoEcLphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA7EEAA51
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 15:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169470570868.1116.7419776789608956580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb1250905b9bbe0abb7fc1cea618be650c9297a0b7a7fe25fd92cb03e89b0d0
Date: Thu, 14 Sep 2023 15:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694705708
