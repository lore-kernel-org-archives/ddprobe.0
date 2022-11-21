Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912E563CA
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65BDEC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669044654;
	bh=HRp+9vmxUh9xTgMYXtuRxIWGXMe3coW8GCHiophWYK0=;
	h=To:Subject:From:Date:From;
	b=UpLppyvqUCxhpbJW1NetReXaoOKyhrBIWAbwX0fkXz/vdPXk/sOoFVKba9z6U6BrL
	 Fxw8EN5fNKvrkRw7h05+yhWTM+ZYY7rU1IKnl0o18DqHhiAa26WuujZcHBQMH5ysEB
	 wEs+POhm1tZgLmjFNEJunvuCRJO3O9+cEG1M1EXDkq+cAZgN7NojnmtiwfuTA4BD9S
	 FqKYZrGPBrHrURwaS4JNKwV4ClV9/9EDCSNTJdxqsVILdymWxzRfSws97nOauPqdgx
	 VozdeBk80XU26fPFl2ZxRD7zeC1yjyoo+4cm82jGn+Z4xGeL6ll3LMq0kcVntU0+QO
	 QAlFSIjDUij+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F141C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166904465431.6598.17515223822044005261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1ffd6cbbd6ed350cbc268ed3ed6292b5f67b61bf208c8fee69135b37f22e03
Date: Mon, 21 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669044654
