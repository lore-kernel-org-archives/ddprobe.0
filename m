Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0557414002
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqEhIcdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B4CC433C8
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699028896;
	bh=Ak1duOzDpsGzV5Pk7+Ow0OWZo1N8VH18rjPnnHOQSeg=;
	h=To:Subject:From:Date:From;
	b=LqEhIcdwzfxRchsvqiGGPEqaizowT7SDP0/p5aPzdft4NqNN9OPVJY6Yo4ErHy2E2
	 IgjX/ElH341Ts+i+aFnL0hCCOf6nRBCb7iA6+RGIPAw8MrbumtzGvQdazRNgdv4S2r
	 Sqr7VIvULuZVbFxEZi1kka8h77GnP0NJr6BnWwI2TZKUfu4JbVYzVy30FOY90sTJ64
	 ghhexDlON+4q+dcTqjQ+WlFCTqRMUVK6rAERUqLyeapqLjpkr7M4SAuJcm4U5dZmgK
	 hbiN9Uz+dASC/iyboXnnlsgDb4hztib5mmV9YXtEZP1xf1vNDeMYd6dy0EAastST4H
	 fFkN7cSYCb3eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B4EC4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169902889641.2247.17562103764802349883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e4c448c15732e7f406b333cd7670fc1b917efd091895fd60fa26950d08dfde
Date: Fri, 03 Nov 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699028896
