Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9023212
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 23:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE26C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 23:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693869248;
	bh=rEFZ8VcR3glErVUwzANs4UFjKy3H93XHyl6CCGHZt0Q=;
	h=To:Subject:From:Date:From;
	b=F4A/L91SPZxp80Oi/x0H80z14Ud30vTXIlcUAcWuWqH2ZL3/U/LYrRRRuHfqC+qST
	 o4KDGZn9P6Z/8o5jJwQxXySQ3C0LLnhvlbCL66fcxLjNQHRz8dGnNB8DUaPQfFxe5V
	 k0aXysfLOXPHSW0Hs/vw8KobEcgiuMf2CwU9Ot1Mht3NOKZCdkb7CjqOwenLKLQ8IU
	 yS2n3dEcxSuu6Unl4NtbNe9yX6piNkcVQPs8UO0rvJCjAYYggAtcc9aUwyr1dZZMNw
	 yoTjPNiaBnEg444ssnuqEYwP09v8Zw0Vozir6FtphhR9XsqTKVh3A7iY0SrXoNgwjZ
	 IP1pqo1co43tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3953C71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 23:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169386924870.22763.9800109472432761464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f71158e31d772f75939d4c18673ada821fc2fd6da3b65634d377d2bfc6179a
Date: Mon, 04 Sep 2023 23:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693869248
