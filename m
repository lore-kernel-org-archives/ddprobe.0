Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67977A53
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 06:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F5CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687501388;
	bh=ppYf18i8Yd8K6FYKAOR5Nl4d7Z+1VpnEzPtdgMpKu08=;
	h=To:Subject:From:Date:From;
	b=jdo1NbMofB+NQhOGbF7vY6uZLqbwgWoBsqrcuQW94uvlKu7pQmUaWoTx5yVLyn6Q0
	 OYowMZlVBtvci1mqBUnUx4iMvVOsVfO+N0KE5ujeGZ7Hg5c/a5n/oE8pUClvu2ADbS
	 ydtexR9U6DY84Y4KvdtIt3arqPNLoqMTWvm9SlFBEolCO+cwoqmEjfMB5UTCnbTXEk
	 p43rSWNyvNJjbSiU1sGiM5P9KZpBNCB8pgyn87HksCi/riJk0AeVrSPNBEQY2oTTQl
	 Mlo2djCuikMdGTgL0qob+mfQfEstuKcq5VePt85IdWVvci3xb0SuXGfXPd+qLrMLAx
	 yg2ricKyjXB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB688EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168750138867.21925.14253037607518826288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fd213abc1659eda42cd4ad7b0b9adcd646f4d8819f2a4b85d7aebe7ac716eb
Date: Fri, 23 Jun 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687501388
