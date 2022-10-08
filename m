Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29FE1C33
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A61C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665246053;
	bh=RjeJMh57TtrLnU9ghc7zSwxGPaLufyf/vlXXqZqAZdE=;
	h=To:Subject:From:Date:From;
	b=r7tOpJDopRZeg+gNJZyjRfiYFnCnpS3Y8a6f2/WGXVkqDSVkSdeAN+X2M1He1pUFJ
	 80fA0x5imQzS7qGjNoXZUEVudp6h74j42xPNDYON1tpy+gCbiZsg1TaXhSiWamdlfN
	 SeYRJMNqMcFhGjndlmDJpY23ZLnZxE0wjI02nInl4HNQermG5M5iV98wIkT9i4ZRlb
	 baSvvHXPh/9a+kf5/XjdfcufsgCdu0yHYpltl9u+IllANGjZQwCkFBZfdLfXjn94mx
	 ieZSvBbT6/r9Jchnn8BqLLdYQCNX4Mw3RnPNgupAgZVGDP+vYJxiXS3LbWZvexPary
	 uUQisJQ/kqKrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B715C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166524605333.32743.3713179335954415103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2565e3cf71968f77919a8b0efab4ccb27e94c5993e7223f590f98b28e499c491
Date: Sat, 08 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665246053
