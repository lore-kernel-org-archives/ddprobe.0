Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43817BE74
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 12:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA512C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687956788;
	bh=kZBZAGlL92iBVAxkBXVckSf8v7tJYykE0ruv9rX/7Hk=;
	h=To:Subject:From:Date:From;
	b=qmKGhKS7+OHaPZLP340ayeJvWyjHqcH234w20QhxbQht/l8y3cIAi8OKF+100dTY8
	 vDwm4YIKcothgYTcMzo1hwiFIEi08kQnIfo8M+JLbKgpVa7t4i1ZAEXOFfSG6/nBNs
	 ZCHb8sbZ9lT7P0mbY2+H9t6wW0nizxeLBjrnWoE/V6XVjm+fzT9iWUgXciwkQ6x9lP
	 IgjTe+4EMpAnupXs7w3W4v8hya/SkgImzgBW9V7ddzTaFGlhF51biiuocCRwT3+DLN
	 +2ktI8MLJd+Ue4z1ClbpTca+wHEtGye+FEwZPtS2yjqR7JF9FM65A1+UoC+XQD6KHG
	 9XyfbgJBl4V2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCB1EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 12:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168795678870.10862.16144222225365797447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba39a1a6bf9f67150196c153afbe183af9186e59d68c1509ed8c14f85a4a5c0
Date: Wed, 28 Jun 2023 12:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687956788
