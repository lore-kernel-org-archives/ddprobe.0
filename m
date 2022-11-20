Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFCCA34
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72842C433D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668948654;
	bh=OJTGzEKo0KqL05NctwGMEAjJ36HNAAPLnYoG6gZF4ws=;
	h=To:Subject:From:Date:From;
	b=XubrirC9zpQdweMknr4nBiZ8Nqo5mPkwy7tDUS9XMj7xZ4wJGrHeagZLzqcOK63Ct
	 qC3KHE1GOVpY7JwlDmFXBiDiLWFaLztlOUQ0cF51pa9lde8SUo/Nme5O/qKuk62Ftr
	 foTYF8N2qB1NEggSfl3M6Lf9PvjM4vSe9hKjrF0cfA+lGQyZRs8I/7H9VdoJLLps8M
	 WpkuLpOwYCGgoB6A8Fn3c8RqOhyG7ceyt3Rxm/ttGC2zwMEp4/b9Kx/AarC/mMxLPQ
	 bGy4tUgByvXZX3CxapjW/aWLTOGGH7vZhfYR9OQ/L/7r4Ohn7cdCrJrK5DoCZPdF0e
	 6GJM6qqBRUa5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C37C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166894865434.21472.16401291156334724775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e07af7a1f24c4aa0b130bb22c6256f31e3900dea96119e57521e703d158c5e
Date: Sun, 20 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668948654
