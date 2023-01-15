Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBC910FB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97881C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673779887;
	bh=IAGZifjuYoNHrQIrSkw580gdJYbYFm89MnZWolxsBHw=;
	h=To:Subject:From:Date:From;
	b=Lwx3aQRaGpIxG0e3W+abK6RDORWMOxO/khMwCj08ieZ3W4Icv/y0ADAYQTec27/PN
	 GaLUGneSHLNdnb7YclyG2VShtB8Nw3DAX9yOrNAJL7FPWhZ+ExNEfpycn+W5FGrial
	 kDintxDHCgaTF7+j0423A+IpFrBcUF0H3tJ+oyclFTDsdVyOoncz5DrVCx/ar3wqzI
	 qNacOQVf/DBJo1UAooZfmVeTV08dpx+GDFdhAk9GGY0F8lfLB+qxpR90439VfCe2h/
	 6V5yNY45hzCHah0iSWkHO6PelzVh0d7UJC4FCD1NVev/NBwJCibKtFTC2nRzBJE0W0
	 mn6plX+cHCb6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 782C6C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377988748.6177.8023503591271684837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d13eece73e0c40a855b812766fff7047a0394ab476e1f464704bd5ce752dab5
Date: Sun, 15 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673779887
