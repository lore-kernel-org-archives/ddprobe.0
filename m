Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0098161
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D16CC433D7
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664686853;
	bh=TKKT5W1hxnTIhkCfLGWzOsWljI3XWXlrgWwRLPa22b0=;
	h=To:Subject:From:Date:From;
	b=ML/czre7g6j3wT2RCo/kX0AiwlgoEDVdG5CQmL1fv3hZp+Sc5gYrtxTmRc8RHacHM
	 Ud52eoUDHqAVwUM7Yokfpf4jBwbxg4VkERKZOBYQNFq/EsE0RHwXEHiOUx5gD/9rMF
	 8xjj86X0+1lUb9UBKR7DjYTwjwD2U9HNW7OpNXymjYDxv3NeUQUZWMJydt0dyhsJDV
	 rKar7gn9tFp2yiK7h4kjsRT/8iGwJ3u1Lb/XERcAzc2A94G4Ci9gOBkZ0j+8LydXbW
	 TFpfY5fzmw9QTKSZZi4lvPhhbZg3v7Jlk5P+xHvbofY84OMzt7m87kmjR16X90hoDc
	 O7kdkwGekKKGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F083C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166468685342.13715.4866214778022692066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975fec3aca410f691a0918cf4637da6b8640ab093880de94d37d567aebf52a45
Date: Sun, 02 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664686853
