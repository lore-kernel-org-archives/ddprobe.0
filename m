Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2581841
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 764BDC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661438452;
	bh=VaxWpF3V5RaXJTZ8X+4J26Lbg3nyDoxFZoR9RPjOwgs=;
	h=To:Subject:From:Date:From;
	b=lEsguz1mzxcUTcxt3oqTn28wpz7a7x/lp98RUC5nqeAkv3tBNFWLm6PoENiH1HaIX
	 zchX3IW1ZgI+oxJNW6SaXLSdfAd2PI0RpsIztlXgW2Tw0RuTFFGI2C4tW6u4+/w6dL
	 zewKfDNQ2g9ykvgOYOcBUQ3MpMHjizm8Avkte1RtDscB25xo14duu+p809zcaKDAJs
	 xFIUd5Q6agzriWbpQZTlvRNFOHEqIod7eg9orscvlEk9tVYKyt9sGVpQg6yyLbUkCg
	 rdfy7qXdCTiG4u/tS4malewhropGcbuzaak7+rzyVl71UGVPPHXZpm0mQ9igkJ/xhA
	 QbxEfgrhB+7jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCC6C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143845236.27022.7515045133390698869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6716696912984a77358061b50fcc2554dbad38f6853bd95a406929df96fa2f30
Date: Thu, 25 Aug 2022 14:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661438452
