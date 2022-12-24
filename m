Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA36D17C9
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85CA7C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671846687;
	bh=K8yVe0UeKJRMTppEwx6sSPkyo9/pSKZHEj4Yw0P+vSc=;
	h=To:Subject:From:Date:From;
	b=knExRIpPJQSy6V0aTpAjDdLzPmto2lSX+vCTojuH3ggaQhFfUlZjAGmvsxtTl/U/T
	 LLIfByUdF45zFZxJ5Z5famiOhnsIfvu3QkH6kYpK8R+bxaqnG0pH+T68QtugRMVccl
	 S7O6XW8hwxOWf6hZbfS8+iAzL5ets36RjL5Rg+603nm+GIu96mewhSjscp1hoXyfNQ
	 g8HJWqwLXGCIL4MUwiZogntbyIWsmpK+LOtyLpkbIYF/inHgMundPAtYkxuoWjjA8I
	 ko+GkE05r7IjAf/LBaCvRpinJtwi6ZbXNxWPMQ14zvDqepDdVVA6+GYvpwXUKX+AF+
	 Cx3SBI5cBYu4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69837C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184668739.28854.12942160937935665521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c7e151e9e7df3cbf5a76b5aa12961e9790bc295056988d3b467528c21f929d
Date: Sat, 24 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671846687
