Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1F57B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 06:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA413C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 06:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682403305;
	bh=Wa14MffDyn+UBpAxOOkkTt7OU9+HTy4NBKfPYkKGtFM=;
	h=To:Subject:From:Date:From;
	b=ObVeVzME1iHzYsEYxI0bdaFm0rpWnEpMSQI1djIwC0j6S8vF3bkrVqqGx4coMTVjY
	 bizb3b1IDU5ezXmaCUBn4ld8U5XV/CoAfzyt0oBHBYVEvzjXMmg3OkumzYiQJa38RT
	 VCYIJsOs+x4ldD87vTAnJRbUDj3q9NU0kfSBK+deKOdKqsCMd4sWw7lfhZmAc5O8xO
	 7lREmv+OfAsViMcC7Ml4Rt+Qe3hv9FAP5ULTUVQPMVkh6fNGJeydCO7kYMqagOzoxf
	 S/1nmOybtf5zAjZp7gJHwEUF/3dM12uG7tMbF2UrXgZPcFBQVsYLvr/n7EpPQMMIEZ
	 Zp157MzGP6Mew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3AFC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 06:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168240330575.31467.8612461501745292644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9396780b2feef6c979395d2c02089381363c03f53e26d74a80fca7431fe9e592
Date: Tue, 25 Apr 2023 06:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682403305
