Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238AA4C6D
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbRzKmJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1DFC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703622496;
	bh=rDv04wF2TjMpiYgJQUjM6Eh8+kLVhAn3vPSsHWTUKPs=;
	h=To:Subject:From:Date:From;
	b=kbRzKmJbKifH8u9+7TH8+X6Ftf8ve3hQxoVlf6FEUj3R/PBuTosfmaiuccCEnN0c+
	 bzESid/ouJSCy3+3LRvbkc8+sYWc0eRX4bvb1iSG5aNY1yRFsjyq6ur9Bpa1bSJUTM
	 yxjndqxlsclOP9SJz5zAG5U2fV/Q+hiELgsolObhjHTpTn/D/3rQk6J7bM+KVMu+27
	 P8fPQSfC2c+ThViCtipQSXyDg2wrwWn+62ktx98VHazeAGPrPNCXYzSf0hlS/FYcZ1
	 XzgpeO7LHLlHsO2e6ydMqdrlObsT/FXLzeW54ujQBzDv3TKTAsWKC8qQ/cWn/eDEKB
	 v8vYUc4Vagc3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74FD9C46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170362249646.27562.555745915915775410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a417ec0b82b7515dadd6d66b252d786c3c31f90e2d60b1d4f3a7e789127876e7
Date: Tue, 26 Dec 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703622496
