Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E8D13AC7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 11:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OO6B2I+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC271C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 11:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697196428;
	bh=PFCmAUKGS9qfDqLvgphuiiA4cKyoVpZ9rkh7xSZqmog=;
	h=To:Subject:From:Date:From;
	b=OO6B2I+zj6GYmXnYoisXuhq7uWkN/0u/WDSCCQeFojlbQOz1vIkBqmD3GqIqwOEs8
	 1fIrej3vLxiU/vuBSN8bK1clyhAOsl7LxakpnTKN6QsOoeOf6htnw5Y0XiTsN8PFBe
	 /h3Wm2ymjFsrm2DiPuLjddM+Yv7j3TXmcfpGuHhyiSg4IfgS3i+NfTOekXUQSifSGk
	 zFw2sss9cbh1RainKt0hr7iWq1A4nEqPUqT/mYD0B/4hvko/FkrZ6s9CEipa5jqgXz
	 sM89ZXevcl1NwKz4qMcbFBErGmRv6Y4aXd5yiTWoJLJ071NQE2/gJCxMDXJhc2YIyf
	 VxLDaT2nWsT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAD9CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 11:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169719642871.19141.8170493998104123222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c36e0acbe8474475bbc70d9e936e1e53fafa0a88e369817c3d0139a9bd1fff
Date: Fri, 13 Oct 2023 11:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697196428
