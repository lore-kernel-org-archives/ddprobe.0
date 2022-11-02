Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F9B801
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75843C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667388054;
	bh=b2zqLqzW4nfv7ZRQCebvS+sQ4Go+LNgItkMCNemZrAE=;
	h=To:Subject:From:Date:From;
	b=kdAJHB1owHK/KReZGnJE4bOIeVHLYxZ4MqNhyKskwDWw3g5a7uVAyMtAbUWi4ebKz
	 9SIrQpUW+CAyMKw2XSiVmRpyzDrfLjwKxq2a2FSGPt8qCd2AkJudiQnLOKgaVbczcV
	 ick6VjBHtNLXw+XvD4eetnRdoGXGB0+uAePHHTdhJ6M+PSmpJ2c+mEcDtuAqCyHpF3
	 gfOHhQnXehCMii8X05xulDhgp8mdxZxa1KqumHIQHWE0JNdJ6aSUKmXhX9cGJbvR/6
	 0oQk/a6UQHssGbgj+hwb9wjs9+e5IVw3PRDsAlEGoJpP/aI6+4JIAAfJBoPTYG7hNh
	 8vzua2k/yVl2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 598D3C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166738805435.28568.7177273661645203227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d028cbd889bf6c606d9ff05fa95a86916752b80a97154723081927ac033377
Date: Wed, 02 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667388054
