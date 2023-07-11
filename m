Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5987F134C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 08:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0FEC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 08:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689064628;
	bh=qhqmzqzXqZ7blWqCujpgI5KSWzMmXDKA7tt+v8PgvJc=;
	h=To:Subject:From:Date:From;
	b=tEXnmxjLUaBT9HxEJL7i6argMDk3bxOiEx03qB96xzy0AJs3VhJ4XHeq59gCrK2Rd
	 jcwuTmQCprgRhOJX93CzU6xzWTGpUDJb4c4x5OGUPGilXMVQDQv7HU+xincc2ELdT8
	 H2AitBBO8xgZBZEWuqxAtGEj1by3P78xnIvtM/47PYsX7U0yp6CmarCq3R9Dv3epD1
	 Ell8R28irFAgnZuNVngRqGXL0OqMpx/uM+mgMZc0/HMody80d74cQLG/4/TXlZY0oR
	 JkMynxP2dKJZ7dc3BnHP+/yURYS3CReppdaA8jxbgcXoHc6S+z8Ogttai61Itvnihz
	 lCpRYkiOSdrAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBB8EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 08:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168906462869.25771.1608619422942369185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dfe0d0e4c6a0c1c7c231831c20e1d824721de0d6564afd16b9837c25cb0fd5a
Date: Tue, 11 Jul 2023 08:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689064628
