Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A66D1859
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 04:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9900C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 04:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686977948;
	bh=2CuZh6lfx99RiEmGSZIh603M3ztwhnR28TuICICxCiQ=;
	h=To:Subject:From:Date:From;
	b=HHWmm2d/5Ui0/kUgmTE4Zy13UN17Qz2axjp6yggnKtPWZOxkx4e+Q2Itst0c4f/1O
	 Ufbm3ayOXe3YqG5PRjrFcHXk1TgptzJuUqhBOTQuMLHCcPiqTQAk1+ZiZzApAdbZSk
	 XNnAytXsBMdLxm4mEGDtT9YkZ7s4oMKw5qZiIkFXycobWDCv+7chAqlKSliPL3lydi
	 F7CLg8iWSdCg/QpLzORRmEFReqvfDhe4JMWt4PPZnjyZzXKqZowoBqp3JwzuFlpN6w
	 zbetACMeJYxtw51vi5KmKZO0rwv5Yhj2QHCfNuHsFcqgBsAHriQ5Vy/BHTjcH2fS9r
	 BfueoGfTxYkFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E17EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 04:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168697794867.12256.6810433628049557626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615884a309d49f61a48d353febaf751d5ee5c1b8615773e9267c60b9ea0c9832
Date: Sat, 17 Jun 2023 04:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686977948
