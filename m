Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78DB482EE
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upQGf+Vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED05C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700581096;
	bh=ohI1nsnE0xsU9p6bRSd7Hz6WfZH0zNu7uqbG66s77ng=;
	h=To:Subject:From:Date:From;
	b=upQGf+VxPpS9CU4N3Jz4hEw0fDT/r9rHc95soG+3gFOEmpql22E4caKusrJLN96BM
	 75HnbovmW3RPYd0FGmmkGGZQG8gyxn7tPnmqhfWwlht2js9DSBc6L8X+djYxuNVoGI
	 0TPKtSKE84aUuX6oRckK+Uzai7ku+141UAVQEmrzmYm2X1TjtseW8sHZJFT35FrCTN
	 Qi7wbBXUbpfjHH99AmJJtF35u4xp/3ZIqU4ZWgArYeZz1mSijUMhqFRC/9epNOpLxm
	 1ecZlPX4rEut/CySi+eJD4qDZrrHsX6r/ypdc5mkpf1e6kkr/JieMa2qTGVWCByDsk
	 gQHN4/0WqnBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AE5C61D85
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170058109641.19716.15695470760331252373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410487eda31db6a65dca447c2d3f9972b79cc0ee8e93fe4c3761cfc846e70f87
Date: Tue, 21 Nov 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700581096
