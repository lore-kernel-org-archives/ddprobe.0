Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6108F7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 17:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B61C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 17:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686762428;
	bh=fM1Bp4GXHCS5ktVnF7U/cowwKQsHkufQrQe2K4pfu/E=;
	h=To:Subject:From:Date:From;
	b=c6iYio2LCrlEEYmYymirXj7h/oEc/uLFNDeNz7SeogjrTSVPvBcoc/M+3R6C1Doiv
	 CxvaQuQYKgnT7vhnD+PuVkOQYCmNj39usOx3SCdbGTqMC9ikC6peQUc404NQYINQuj
	 9rS/YrgAVDJoo8finSsMw+x4pf57uNJETI5ZliCRvIgvV1Deoxrh2NEpN7EY5mXAmv
	 GjSLeOPfMRVK8usO8MyOivjmiHBwonwuoDVtrnioc+rV3vgxbbsAxssqHU3seMSxh3
	 4gpK3ZroNaRf9p4sB6z6pOx9ZPpAr/hhvPcc69hGN32uM/UcJHrqMfnFW8+dEySNJm
	 jcrf0rdMhWJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCACEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 17:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168676242870.10594.12210466005227115726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5749be94956413334dbf82353b8249dab6ae40dacb4f23ab7d5536fe1f84f3c2
Date: Wed, 14 Jun 2023 17:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686762428
