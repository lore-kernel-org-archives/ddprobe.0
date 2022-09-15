Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF79815AA
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E8FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663209653;
	bh=axLUgt/Fq9krFcH3G6PmKUsMZiJHl5+DeQGtR+4+joA=;
	h=To:Subject:From:Date:From;
	b=SU5huiKyzbfot5iaF7VSZBvLkdyDBT+ql6nitmJ6rXn0ixnqEa8itx6DwFgn1CTa1
	 Qf6/VcdSJSX79M1gVldO/j7e18nfaOjRCYW97CBnRPOblODgYinpSiF6VWz8r2WBKg
	 f1nSkeenpuEua2C2AH3LphzUzAEBua6KfSieu8nV8ZWLa4j7NVRBEheqyPeg+H0ZZc
	 Qde3Gzrdy6fSU4087NE0jtjixSDHatSJSK603ebp53wdoKZxJAjXQiEooBpMy2VgSX
	 Lj5k9FiTijvci/vZRTxeAOrYMY47MAg2SxJovd8FhU7+TrfGKFVJMnd+OHxbEyiw2Y
	 Nq77npHiDeugA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5840FECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166320965335.24778.892466075915942744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f081caee87227a2584c3e4331793bc0cee0aa4f8d8d445510886950f2acab2b8
Date: Thu, 15 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663209653
