Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE0B3D90
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF6DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663947653;
	bh=JvcojXVtPqqBSuIxwEPq/GUu+uLhw6MxYHL0PlpWfzM=;
	h=To:Subject:From:Date:From;
	b=bQthxagRt2sBnzWg/Nxb6o0ZAIavNj5Bd083bjo8zOBOgBf3Y8Txalo/PD8ChoKdY
	 +y4vJdcFM0rbcR7MB1CtaKD9792VPDpH3S+kgBiFgb8+uZzxNLADTjxvTIwN93h41K
	 d5F9t+XxjaqPZf9ybxCGCNGJzvv9e01xZjiYbVreQnTlPIdmVDO4/JRSavN2FSrRhB
	 v0jTtL+PqV4oJlLW39KWTWrbGtYJJUSuDJqAGi1IqeZot9b/JAonqKtBym3IMuWHUF
	 W4aKPt/oSC1uxQZDvpzHhi5re2QMK3pVUTU9SUleNm/086JWEHXoNkj91Wv1qdQI/x
	 nEl1ZGndPrBxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 501EAC6FA8B
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166394765331.19827.13829805042180730443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659acb1c53f915b91c53a0ee7005b74c682edc90aec936a85e1021c26134f379
Date: Fri, 23 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663947653
