Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4EA315A7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C63EC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662340853;
	bh=7dZWxySuN1R5+UG7RKMwFBOmtEZvKHZHkdXofYsDA5U=;
	h=To:Subject:From:Date:From;
	b=XtWlrXCOdC08qjGX3AWl2wdv8GCxXChh1DizfqBPDLq9aQmAaF4wDHal7a3sfT4pu
	 fbgScyn8zAJa3uVK/8u723O9FZp0XWvrA95OB9o6z+9kcg3r+BaxMymKiD3q3gPowi
	 /phbr/eGOLtAmS+NXqmy1WFx02QvFq6kRwFd9g6OWIl48GqFuV83IBcmOTPRXcldFx
	 s96Wn4F6N2vYAd7Ni1LjcFE1sU0xIiKhqMwAvApsdvSGntfcdZPx4bwiLmhcN4EL0w
	 fNvyOU50ySdGFS5D7vf5zHlSyZ46AO+TyJm4HUphfdBi2WXmrquEQ1DZfNDGmUChKt
	 u69wOSPFax9Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DEFCECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166234085331.12281.11272700403386470454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7363f4caebc6c0e8d5ed590212846e5f42bc505f975d990e99130172b635ff
Date: Mon, 05 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662340853
