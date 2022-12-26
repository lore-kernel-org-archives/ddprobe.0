Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5EDC3233
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F5F7C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672085487;
	bh=VXtZTXxofuqNF7/GfYDWzhRIq9bsZ6151MUFeAJIJjs=;
	h=To:Subject:From:Date:From;
	b=t1mozG2apaHICvVrhVhUCHQEi8b34o3fE4Zt5ppTFJRf9G/WYp9/ViYwtq4ipawEM
	 S8midBd5aZc6U576Pdx1XTOO7CZNLjoiMsysT34na1NZelBc5cY7R6w8WC+mdrmYd7
	 qzZVU3gqg/UDXFlEeVulffuFDjjX1WEj3S7KJ1PTV/YDc8r/ZFqRcCbjeTr8iSOq21
	 88wZ/gv5MrXR/yHBBDfpBtLjCi5VofO28lqgUxRW0jSOg4lzhyvw6lkku4EnuyJVFx
	 BlxBYamyRIglXnyiMs1XSzZo2Ae1G8YovsuPqt3raVGFMH/Hev2tdxX9wj7Xy8E7B4
	 V/GD6sVai6Ykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73C83C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167208548743.29034.16307301719819887505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c386b3da0f31f3633b3e764efb5516c6a9c1d2e5186653d12f49dc2c47e8f625
Date: Mon, 26 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672085487
