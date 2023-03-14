Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5476D17C6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 03:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA68EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 03:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678765026;
	bh=MwxHAjeCnZGy8M4Vj8JMt5oSYw2sWQerPs7de38P/u0=;
	h=To:Subject:From:Date:From;
	b=SwJ+UMjaXZF2U1rvQcdFQthrHQKAvT9MyQo6BdRHGgwsQ9ubF34wbaLEBwUAUE+cN
	 bZC9mK6Bn3BCfgl4CRu3XOooPs/mVi6VDq+A2Id5ri/vT+DMuGrRG4D4X1KGqseBUl
	 DI1HvIF9uMV60tQJN/9XfBD0+VWsH6WbOD3OsI/rsL8Cb6w8H1NRAp4jVgrvoemG5u
	 nL7f3gtucCxmA8Ng8ntEG+LrQQc0tIfj7sEkI6Yo0lcCW9CsIONcy2qKaKjKdnAIpa
	 3Y3dpvMU5/S5vYG1J9cN8bC2sfDS8Lx64RQ0xwx0zyDqeMzoDiB8dTtgPwrsSGWrhw
	 9ZruW5apTfViQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95AEC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 03:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167876502579.23754.4590340171007381023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22d6b7a52db160621f4d4f18421bfee6ec75498f7be4d7d2902eaab92904b7d
Date: Tue, 14 Mar 2023 03:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678765025
