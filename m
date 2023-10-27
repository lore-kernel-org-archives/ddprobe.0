Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C9B374C5
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cg+6IpXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C6D2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698432496;
	bh=KaqBrIOzic0tPOUVGE0JR17/50ZNJfn+pwWEEVcziSw=;
	h=To:Subject:From:Date:From;
	b=cg+6IpXQDEpKSkPEAbFYDkrTEgmwCjnjGwo2uSNMdXgq5lS/DHeaFvxOKRmE4iZUC
	 DMvWTALxQm0m7AzU23sfiXe52WQyfw6Zb9cWfqi+HuNPRdttDrp52AkAsCJx6+/5fK
	 arQfoyWPOiROxl45stMhYuWidvLUQUeHaQ643ID/grIyQIFy9fXPfF5bXo1rah45tV
	 6+Y2OyiavWUVE/sloy4QVtii7lQHi7UfyDma0cRHfF1+5+/7+89WXNPfQdzC5juX2M
	 d7KEF9m7k2Irt2sKwlyh7LGFqjmr9/CotNBAFE+umNGx3Krje2iORk+lxlPwuamjqa
	 kGzErxN+hf//w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67954C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169843249641.23983.10799025690132773515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa3da3efe89a4dc6a4b34e1aca1af2996c35c1918b12826042b0471651a80b1
Date: Fri, 27 Oct 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698432496
