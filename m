Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFDCA110D
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A4CEC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662111653;
	bh=TFW8DywR0sqM1/E66LYGvyvuA+qNZ5CZqa2VfVuwQdU=;
	h=To:Subject:From:Date:From;
	b=JZ5lI2Y3pUKCzTmkVvTrtpwVg/otFdvEKNtvRAgG0mfnX6+itZ5dAnjN5zIWQ9zU8
	 fLvrcb/aDAkSMJYC2/zfJ5+n/z2VgA/BC120jmjR5/h7aCs1/bGEbbKZVqTXlcRrd7
	 IVbWvKOor6K66RnEr8mc/4lXHSK8YpCtXz/63YiPn/mz8pkGq0UUn/jEfGN2fHk+hL
	 Ppzgi7KeIakFxcZiKNGR1rHEbaCInahUhAxeD9PU8OI0NRqPJYNWoI0t1w4f3nKgxK
	 pGXUofKBVQS6ff1oznGJCqrdIxIXcKWpIru+IIEhT0efQ0xBS/y+zy8/FXLW6ka+89
	 1ABT2QjcF5/Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC01ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166211165331.13246.267250968392480829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eff0767336dbc0f4d26d2a20d144b1a6073f20c3976e58cd7c486fe9465b292
Date: Fri, 02 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662111653
