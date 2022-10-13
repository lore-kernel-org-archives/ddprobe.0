Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97623C36
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A716C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665679853;
	bh=rCXQr6gbEljgqE7ooM+b7zWDk+MHBk8fUOny8qI8iuw=;
	h=To:Subject:From:Date:From;
	b=E+4zNPXT1ueVA8FZQyWBbXb1dD9DZ/23sZ+QScPiAV9mlQ1pe1Gdjpomtp+bMFyU3
	 0WqspxIJwuglLuni1r60FXCwdYNS/WGHZZI7wn2+4hGvklwgpFnVlj8B5u+S6UTZ6q
	 Uu0Xv9das9uptDsdHDfmM95V2VLaMdCpStbKASn+Ts4/WKQPjT3gFycp2+X001HbPd
	 AsezOoUgPSTLDMZnRUXk5Nn6yfJkwgzGGNygRcPaU/pwRbHG7Lsz8W628aw336O6mw
	 OQlOqfF9/etQlxNgLBD78omZ+pKvh3w48WyhopvanmJMUcsB7oT4S5M65V2RB6etwR
	 v0QuCLBf2Hh7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53776C43217
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166567985333.13259.16364915616507843173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d3afa89a4b1fb22c5dab7184de69148938e6a142c27c816f1d83a16c788dae
Date: Thu, 13 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665679853
