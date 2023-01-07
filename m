Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE183257A
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE2FC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673112087;
	bh=8R/4o+lam5UxgZfQWjRYsNkyGaAeM1ewXAuMUN2UBjc=;
	h=To:Subject:From:Date:From;
	b=V9xGuMe1/gUYZidOjK11Mug5EVuBzf6agaBkXe0+Wd5EBkQM6tu2WQcjXn+e+chWm
	 oNpu+YB9Il11/y0lTuOYG+mSRJIIvmfs/YCQmkku0g1/UFeo49HtB4zJqJ/+1MQYsW
	 97MKFRX5dDXuNbEyzcJEXLBLY1DYUH0uRn3XiRe57ogK4d3pwEy4X+qLO5uXpAVFpe
	 Rek2ZHTcouAkHGfqLLhyTx1PnmOPNNPhtllXyApg2rn8L5biudnNQ0YZBiZbIxkGMs
	 h0DRNuPhKUsebwx4PIRfBv4GVpucuZHe7ZSZNZxRG7HMjWl8moRdF3Fk6UH1Xt+et2
	 tr10Meinq3JrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610CFC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311208738.32496.17003979122039973823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf37f8685cd5379cb68ec122d9401db4d518240a52dc87b01275f02dec59046
Date: Sat, 07 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673112087
