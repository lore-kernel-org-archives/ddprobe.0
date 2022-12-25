Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72EA36D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80816C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671944487;
	bh=6UURre6py7RvDYGmean00mFU66ejYrB7DZIlk076GUc=;
	h=To:Subject:From:Date:From;
	b=NOaIWalHL4Araba4weevqDDthj3EZZGv9E86KWaGVFPRdriiRr5hSpZd/yLKjVBEj
	 iMnMrr+s+D9FNxrFM95B4GyBeGwCUzwGF6DJ0+WbLw2urSGoBjKmVtiKYgRWHSmzoS
	 3+vMwa9F/Ig6CzUMshCF1HQzsnisci5gPqBZjyQfMprU52z8DH4eIzpsoWYEceeBL4
	 TIyvePD/f2GDUJ3aPuajN6FGtRK+KctBAaF2lOwJ9dojbHX4zuv9JOeAkFoG77Xi2g
	 4sX715f8M3TnPEl6WFpVf1QkowlzLcz+hTh0NE50tSZQZxw/QT+AFRZa2fH9xC4kb0
	 IqaNUFKo4BDJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C43C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167194448737.5737.16620056747156682721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8265d00874e8c50cae9be331bb92c48b28c5d2253e39c3095dc1f518c22a1f5
Date: Sun, 25 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671944487
