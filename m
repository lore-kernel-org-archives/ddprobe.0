Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99B26AD9
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GS195na6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 760B8C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702612696;
	bh=bCDS3BV9PWeTpRIwPDjHjZVpjmLshWFAURnbPpBxom4=;
	h=To:Subject:From:Date:From;
	b=GS195na6pvy1xo1AlT7XXzRLd81BIytQ2peEOGzjk2XL3eQFb7mmHfIaCUI7IWvPy
	 9z6H//TIyBytX4y4LfdF/LApDfLlH+2AmuMD85Ouz69YRQodBZC3F4cAweXw9030kr
	 u1iTfsuInI9dNzeW0TJJLHPZgjyLUn+iPyDFFaZqpvd6nhT4ACsL5HW+TVtPTC64Tm
	 lT5KaE3D1eTWnOMALXnET310L9jj6eeEC6exgB8+TwvQnBHUQSHEg7O0r9jfRPmld3
	 DSBGi7zK+QdtGw2gEJvuL0ZBsgJzTHf9azL2OzJS4WECWaD3zWYYvuqyRKcZUJ9DAI
	 To3tTLT5gOuuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C117C4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170261269637.27355.1142613611801077375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f1c91c00505a54befe68a62b61a2228c9e81c904c898684fb9908a8119f0e0
Date: Fri, 15 Dec 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702612696
