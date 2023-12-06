Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1444F47F47
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOL2bWzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87BCCC433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701891496;
	bh=kTnxF8/vgJ60o5MJ4ZplD1za/OEnKG28U2Kd9CEMvxo=;
	h=To:Subject:From:Date:From;
	b=sOL2bWzDBGuYQ9TSmXRuDKzOyGVlBbMS9mAnScz/okBy7o/ejLn/dOebmVk2ltKja
	 AVuZl9/WGCBDJdp0fgehYzbirYdRyCKxt5kuyTLint2J3z6fS1utA6PukJWA9rtUlz
	 FMmEYXI50ByznK9vfimIHd3+4Rtq/aXmugMUzOTZ5vpIpWL5at0jsJeaP0hZG19tZ7
	 Fmb62muplu1JUD21msOy0sA6tL9SkLoKi3tZu8hb6rULZHvUHryYfw0deVKWmsQwi/
	 q/9ku3yn3I1+eE/e/J42WUirqjEs5D1bY3VNtHtJb77k7HeunYKmiAPhL6NA4nYp95
	 mQx5h0fsJnmNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66430C4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170189149640.5968.16352970795487932292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4605ac0f06fee1c3c5ea8bbf32fd8443aa18a662e3d86ce8f7081de273ff672
Date: Wed, 06 Dec 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701891496
