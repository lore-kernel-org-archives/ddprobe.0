Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B5EC14D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6E1C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687987988;
	bh=k9ebRlLp6SYnw5P9XBcA8e918z0rJq2UBCEv1Cjh5bo=;
	h=To:Subject:From:Date:From;
	b=Vjj8tuIbpvx9417r7H9KFX0CsyR2BNHS8uXlHKOi/izdJq8va0y+YM2c5bZWncFcf
	 U9/+DI9y1gO6xqpoUjRoX3azly/IWyXwuuf85tlOnUTSQeQzBUuSbEkUWS6174iWUr
	 dUYMVGkhBi05RpJcmb4crxt/ARpu60DEVQGw2ZWlxVWG4xJ9Q71UjjgKFnoms8o84W
	 OCSMnNrHa7NhjYhD5RdODFmRAlhOmF8Qt3M3uyZB26WRq7wRSJuKoyzw+n8qnAP/8u
	 9iPbHRDaMwZz5AiWRfjBOcz3G+kG09e58eeS5a5gNWuFaTwvg2ryWIHCpisFsNPVQF
	 bbKhQpvVX9DcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB93DEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168798798869.25004.10312993978334886216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccbb868d01ebd644fbaec8cca00b405946cb0ff1ac7d5f15cd6aa33ca83349bf
Date: Wed, 28 Jun 2023 21:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687987988
