Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8281215C0
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F81C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692679448;
	bh=AKH8ibKozJttbfFMikC94sQ5IDQcY9JMTBUuiVub5w4=;
	h=To:Subject:From:Date:From;
	b=qmpsTbdw3gMWColjCvmbhvW7iFTmlsD90kjRlyTLa2Su5N8042HAvo83aXtk8kN7X
	 r30JJxIq4wOyofMkxOwJ0j3d7OJIt+Xjb80dV4yXucnjleHwanpH1d8e+aRnWisXGR
	 qCLSjDwhx6nxvilNBTtNup5f/ZQEB2lBuPbW6zJWs1PXLDiX8knFdSbNBGtUzgRTUN
	 719M7zH/gSIxAiIywGDwPlMIg720QF8jnSKQ7x3vfAt4sMuSsCkOHxie7qRV/tZI+3
	 VUvJt728uynCnq/tICOc8ARdFmL3l+Cyt7MGIqoq7wTpFehUpyiiOhPbJuyI7JzsJW
	 rxVegEPrZzVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1739EE4996
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169267944873.11574.12279668149370472993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1204f26aedea89163604c8a5ada2d4e2e24740a10f794d27cf60eee7ec4d250c
Date: Tue, 22 Aug 2023 04:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692679448
