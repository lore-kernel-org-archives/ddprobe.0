Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353868C02
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 17:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C97C433D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 17:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680197945;
	bh=H6ggoOVvwAMV9fFvaWXyDKWCVaEfOqFjzT+phcJivTg=;
	h=To:Subject:From:Date:From;
	b=Zqs0Ys4o2kkRY8/FeVdgghw8Yx+0lsPyYeJ1E+v7isfkGVjVElDaTBOWBfL37B7kq
	 E7H6Wf7gaeWaxTxCKtmwQybTD6PDwJTXb5ErOLiNKUxWz3RPorgDi9wFWXcwnmLrWw
	 doBpNQJquJMHfS1evRsKUweP4GEb+jjiS+xKEERyK2NfmCHgQLiqrcJ4YMmidIg9YN
	 s7QUUF9nj087APS7mHwK7dm2DApxiIqI7fJQIt92J4RSgBpchii6bXy6MAjSgoQhGq
	 TrdBR6NMGbb12xP4ifyi7bu1F+S2mt+KRfk+qZ0vlHv+tSNLe4uFdauKHVeKusN7ip
	 zzl6SRNcjc/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C0CC761A6
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 17:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168019794577.15551.6766771273057230749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb992dfa5c4215e230a1ca0eba7e09e58b0fb5114f6b98e6b122f6e16dfc7df6
Date: Thu, 30 Mar 2023 17:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680197945
