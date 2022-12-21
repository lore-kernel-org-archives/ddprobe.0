Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D080333C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85716C433F0
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671659487;
	bh=YbXJGXGsUFqRHTfsfsGfbCyUWNs3MgYBg0aqrA2o060=;
	h=To:Subject:From:Date:From;
	b=cptYpvhLFIB/HnjbC8hvktnxii/ON0x7rnEgXwdNfS9RwJLuMUZJjby0xgdEHbg8H
	 tGl9+nGm+hXDHq/vLOL5P+xx9yNe/ucC2HjP6pnzDWuNg/UCgQ4NETr4BcXqSYiC89
	 QU7YrFZ5CZ7BhmtyGcja09c2aSpNtkaVDNjE3MvJJtsRCUJf1xPgCjzHYUYIoeQ8xg
	 FYJdG9rz9mmP6sczbVJGUOdZ0hFBlv2QC+wP8NZYdvgLBxTwlMo5whlbG9SlFuYSxK
	 RHSAIjs8zb5a7KLjxAj7l+m5hlJWe/G6Jgo3dmAWmhkI/FA0FBqO4uJM3bWQLaWCam
	 U+rmNFkPsJG1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6971DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165948742.24047.9752891282425127660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c9499571ee8b9348ae93cd48dc4ce9441c3cfc7e9e65c1227342b9d61c92a6
Date: Wed, 21 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671659487
