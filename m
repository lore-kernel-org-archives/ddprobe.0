Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4140E63D1
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D825DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676905745;
	bh=9dB4laf2F8qx8BR4bYVbAYkV1GlbRErBieSHDrcRTMs=;
	h=To:Subject:From:Date:From;
	b=BpiuGympUr7ZbL0S1iFp0qt/4SGtSGIcVCp/+UjKyKUtt860SFLrA8dRepCXoTzMU
	 RDDzwOKECw+bOJFs6W0d//ydAUM2m4kUfkmA27usyVS6FF52R3S/B/k7uyMx0ivQ5L
	 3ZL9dnN6T0QGGZ/ywyEW0FZF/BqyV/Qae9SNKqHtyPLBk3vbMtlMIhtjJueWG9Z1Lg
	 t4+TRbLZAy8hUR0mwScRTAif5j5Lr2zFdyrDvz7v/eDJoRLJDnNAugeTkCBtoMloBX
	 ZXUY04GFWHHaWpb6JXNoasrRIwg02JqtmclCHnYWV10TtFiYntb6GgGaniE63sB1Z0
	 4qWvwmgkWtZ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0251C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167690574577.1145.9379548508988082042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7da1cc84e2c50794ab76f60a70045edbaff70527ed984bcf22b9defbfd9b0d
Date: Mon, 20 Feb 2023 15:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676905745
