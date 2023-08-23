Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700341F17F
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 23:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8C8C433CA
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 23:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692833048;
	bh=To5RGkUrwQrNyHCli9QKSd+9yNyEZFo/F7dCFYiZCRY=;
	h=To:Subject:From:Date:From;
	b=ZWmvYxw9Q6dByhUOYkwb/kOZzpfBjd6Jf/akNUtL906zUr1UvFrlhzw4nluiK17FV
	 qKchUsgxHu7qXUlc8QtT0J9yqxWeK1Nk8hBOVi1a6Ded99kuoN0od0fW4KKD7rd3Ul
	 o6qTEpuWwtbAXzcwOscZvvr7pCBnW/+uNc5779h8+KLNlSBbZ2CXRT6/qEPiRgi2Ou
	 wglsxYUqtldZFsq2BM0kr/dhXewTkhRE7O9uf42A+Q8WcJRLanpIlNlBP8GToJ8OI1
	 usyqX5PJLBs8zGghuDytiEFzrKUr53raWRd8S16FX9kIUjBQIE5kYTgriQPs5aLP+R
	 2J15wH0VRtKQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22ABC71145
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 23:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169283304872.13219.3820726567981458121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44932cb7a639e49a271084cef34af825c687d2586dae317b36cb3a044e742f0
Date: Wed, 23 Aug 2023 23:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692833048
