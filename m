Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6727315481
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 17:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E742EC433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691517188;
	bh=ssPJ+vzCzrMJa1yYBCdVoOT30Q6w/nBypUoj6LsPPPM=;
	h=To:Subject:From:Date:From;
	b=McA+rJcu6ddgFIvTbLt0oBKUk9q9ipBrsTIsNJLskxlAc1AKRcb0RwFVdQ9Db3YvW
	 M4QOpB/5UQsF79palkZdnHRMJk+qtNx8s/BE+Ur+2wKogJd408GjXkVup+QC1nMJC0
	 mV9RzdXim1GpatGnKE1d5RVurjpM6dJmYiyPhNn8ELJaH+A4Bt3nyw/CimvrLF4ake
	 r5jOph7g0Vfpic3q1YGy393wb7SoQTTkKDZ8gkeERHjHBlI0zWWWgZpckBDnxAjCmb
	 TlWNJ6xndSojcRDwoKNUMeBHTuYoa0M0LQ53YNokHXuxvqfhLh49x+MUAN9PfaR8wA
	 3qMJimkBgIH7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C099CC001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 17:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169151718875.9358.6824484575832424652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb63a76174fbad8593cdc94d1962ec747683027f8d67babda286fab77bed3ef4
Date: Tue, 08 Aug 2023 17:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691517188
