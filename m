Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC3FD36D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BCAC433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665725453;
	bh=n1wOHV4+CKxyCmgU76LXSxnM4r4WGam4BaLx5vSx16o=;
	h=To:Subject:From:Date:From;
	b=CuygQCJ661UqkaNcNFRrljCo2GyQHR2/OwN9qzuVXjDFpVvZOVMG0CZj8tO4ijlCu
	 CamQiMW2Y3iF6HBdyEqBKKldZXIi3VXkm9C7/yfXldUaRkRiUzBjrBxQPkUz6HQHt6
	 oTg1BEGbCj3yfBxS9+r6eX7lCS4Vwrk24h88lPG4SEny34hjxDd7JG/pmhOY5IJztW
	 KN3njXnNDi6jiYWdOONbMiKyp6qoc2wB33tIWoreQqW3VCl95ecirUF4e3HyQDKeYj
	 nhQwyH5GQFuAlGspgvcAxoZPx3DYUTBsDn/owe/tjp0Z1xNhIFkddw3YpKyGrc+dHu
	 H55ABQP1yYMlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A777C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572545336.18043.883928741204164922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c611b54714e59d20da1b2aeb4f27d52c362f18b686e6cc9044f5ee024fb19c4
Date: Fri, 14 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665725453
