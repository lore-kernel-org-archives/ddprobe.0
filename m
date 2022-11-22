Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39D0EA6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF46C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669095654;
	bh=ug8GD0zdJaRgrqnVtfl0jgWcDUtuG0yIeUajlVHzV5o=;
	h=To:Subject:From:Date:From;
	b=QZ87IplXvU5oufsSuK+gD6mA8OSVvmvEkBlyg004xYnnhd9qA3iRHa+GMZr5Us51b
	 tusB1I19WBced/5xpy3pKy2/JjJ6QcNm2GzMkYcPUu4r6n6GGxsYLcctKz3TRfvaR4
	 pLvf5BIBuozYbXOtLaylm4lD6c17+/8f7bRcChaqF7MFin4gdlJqD63VYePlN6NKhY
	 h51MXcztpxRuHxEQ1xlehVpdNEAoaAjmczNa1KuYqlnm2ccxHF6gh5/fWjzExZdncv
	 e9pIsQxU14ThcdPuk7L9joP8dU4T792Gz6dyNpKk8U9ib2I3zWFGV5PKp3gGqVjEYn
	 2sfEMgbNe4+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527C2C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166909565432.10474.222368890874461130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb4d367f8362ab1abed12f969738ab299a7e22374d9620dbe5f25a773271d7a
Date: Tue, 22 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669095654
