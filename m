Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0EA290F8
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 19:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BB69C433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 19:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684263786;
	bh=9dEJclO8mLGwWArUkRPZNHqwcePDAAKSn6LaoczyCms=;
	h=To:Subject:From:Date:From;
	b=czxI+7mSNMr6ITPFqhT0Is2nuEOdgWDy2Jo6PG+Bn+FSQY+dzNqdjCJTMJ8CqW9mQ
	 uRkYhTUavUg8/XEASQMdWMf5iwkuxR391BM3Em4ggb9HL0AYy4rnsX8UHqxKDzqM04
	 3uhD9lZboDc7mXCsDXpdVeMdWvN0HHMPE5e8E71U8QX7C7SqzoW0IlNVqXw2yX/yol
	 zLaVQOJvctPzqWkCMUPxV7gB0oJ5o+oRVtGmx4NzbP5dowivCyz3Vx70hpSGGgTLOo
	 m/ip85JBd7vH9EVLopQfK0LtSQBEyZB2oJtEB2IsvkngqtkDsIP57yxEmilQFTv2Qy
	 Gczox9oqc2Yqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDCAC7EE23
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 19:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168426378583.13539.10001538216852017744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763ce07bc239042386c4809afd213a18c0cebdba37046c74c0c46b4457290fb0
Date: Tue, 16 May 2023 19:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684263785
