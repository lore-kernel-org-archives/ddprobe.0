Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6FC79D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 20:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC17C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 20:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687120808;
	bh=wUcj3yZlpVX3ra/CEKZRdrblZAOgWWCQ3HGbyehzBhc=;
	h=To:Subject:From:Date:From;
	b=Yww6X5ycSJRPW7iFWzbDdvRXeMmkMw83MY+nirapFxaPFG5S6ggRWbyEEqafcQJGL
	 CLTilUGuc4CTSUXeZluUTkrg0C1ZtC8t0d2M2FIs/suFzIycCW/5V52Mdzj011LZxx
	 CpOOpxnYIpHddKLraszG6nyXoMRPGVvMPLZlGYJrCR6NAK+oHiYG2UWtdKX0hjtj8b
	 I2Fhh9apN8H45bVyfbJscfLQUkgOgNRpRTLqzbXJPhx97P9FYYyrhYvGN3cnGwHGNQ
	 QtE6xVA7lBCtITEPlQ1WYjB/11hbr834RSq5kfgl2Yz8zZR7Za5NdmsfLSi0sm4ugY
	 qMOCPeyiGn95g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFF6EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 20:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168712080866.31580.1716746298437915170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23685c8be168592ecc5d921426d9f7df0276b8aaee0c106895a58ab63a6cfb72
Date: Sun, 18 Jun 2023 20:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687120808
