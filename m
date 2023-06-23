Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC80100B8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE616C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687541588;
	bh=UwNGCWQTqJVtZMkNJNzs64oC8x8K6km/9pBgyPB10+8=;
	h=To:Subject:From:Date:From;
	b=XD71yUHuizg0FEy7D/GphmURF+s59Jd/WzaUN2david5dwc8y9OPCoarkUO6LBLMU
	 FqxgpVy4UxAJ2fBt7gEMGAUSkLBjk/mVH6vnjK/gKigHwr1oJh35kKhtpRyChYFrMk
	 jx/J/RYl7ykWKiAibjridwlGlvavfj8tYD0J8kuKwLMuiQSiC7+Lc1XnnmnK43SxVm
	 H7Fw+Yhwn+HARoN/tvxRh8c0SadH9eDUTLxayNLaTkKzZsudLZGzMTN3JBEHGsseun
	 6ZwKHuojWQF8uGUUE5Hzb1WUxhyMkZGEcMUlSYzQCew7wEFcFNYUTogb4tO+cSTW4V
	 MdiVrYLs8Cxqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8031EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168754158868.25775.8752953093574897116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adfdc2e29125d19d751c605396a680d209c247377778f60d3c044e37b119b0bd
Date: Fri, 23 Jun 2023 17:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687541588
