Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFEA36D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE9DC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670401854;
	bh=Gm6ja/3DKBHGDCgtmd0MZ5Dp3dKn+uJdADIiFDYB0Ik=;
	h=To:Subject:From:Date:From;
	b=b2G7LsTJHtKSIAe316on39783yZ8udX0xZ1GBwicA9IeNFaJE9ewmjINu4EADRaqf
	 x3MYo5fw1sBWfUQhrBlar/n9MHvDrkx5IHdP9KUqjxu12kLIhbZS1owPCImjKKCzo8
	 s9Vo/UTl1mLVQYVSQyFd1GNDB3N5BfwY5tt+/n14EP+fkvNnrTbF14oaeibT9x6tig
	 hpM48LyYjRtbPyFhLofJ0GDpnmzukZe4Jvg3PqqualtIKqIW3yN+PRtgjeGaxg95np
	 TNAhpxWnofMhoHmS5NhA8u6p/aQS20zAhukzI/QECBjWneN/VkRz1dK7Odmsck6og8
	 vQm4fYRQ8NIJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591FEC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040185435.6824.15893962854814484375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57a900b710e82faf05afddb205c05d121b80d9309000f85d2f5e02f0956e3bc
Date: Wed, 07 Dec 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670401854
