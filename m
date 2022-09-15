Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17825385
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7152FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663279853;
	bh=ER+JHob6WNQvmUzYZtLm54olamUaFyV6oaBx47g0okk=;
	h=To:Subject:From:Date:From;
	b=JULhQETyZNQkpYiN5BvxwNuNhVwh7iZ1JHRHETqKdXrtlrit9TJ5bAwkHpIAr629h
	 0InNWgzGRVrfT/0Cj32JoRRxJTb5NmmI3Fx/tpZ/KVN5D2IE+Ov6YD86Bbp8Y1XlXG
	 dWV/Bf9xB2Dq52VdgpUDnNvqRuo4l0deunrNFYR+IuBczzV1vKO3WIW9o63vmce2At
	 zX03a44gYEPDFkgljNNZ5xbrZ+ZtIU1s+dvGjbM2/+tIGCzF6uUlI4vYa+NdQUb1+r
	 8sXrMBqDcPsU//RChgTN/yZFkpEWJEC9Oah7qlhBEzzNyjtR4aftl+uHbxANV5E4H1
	 QJUV1NAiuE7Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59A57ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327985335.29608.18082385904019348833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d7124912a01b0a4e42734b40dcb891c7cf9692f27f60c8395c6a7dcd89f049
Date: Thu, 15 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663279853
