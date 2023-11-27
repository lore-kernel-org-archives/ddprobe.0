Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0036145948
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw2ox+fS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E06AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701117496;
	bh=g9K16Hs7ZLruJLY0KuGFJW/6qJNNuqFwJyD1tJddLKE=;
	h=To:Subject:From:Date:From;
	b=Jw2ox+fS43ph35yG9rGMw6yTMVV7UCRi5uBTLVgOdjXSxcJbVAo5Zxx6tQ5lqdUuI
	 cGVQBVtMmbQFGqOEfQwWFpMsRi9yhH4H45fEI0sbshvF7heJVIQViBnhVJsO6gQzdD
	 4TMAi+ljpLeFH11AODBsIsrBpOW/6uMsExHRDF/lloZ+q+dCvDWd7KIuKjpP0tClB4
	 dfVbR0l8q3Srv9PL4M0JVeqfQ9zeU9zATCQh9RQhrfK08G61lzrro51dRH+at93Gu1
	 F1rTVDuJtWCvtrTf9YFew7AR1VRZG5i1YNAMmVom5VGBXwacQY10eTXyos1kteg05J
	 kFTZOdFNnpnFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 634D1C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170111749639.11281.14680538736603685266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2354b2bc2ff11bf296d33349df2933fe9b7959e8a9f39450ecf7f067c4fb21b6
Date: Mon, 27 Nov 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701117496
