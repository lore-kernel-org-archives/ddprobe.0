Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24228F7A
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E530C433D7
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665630653;
	bh=UwjKwuoS8+tix5O+H+38trKuLNOorLqUGYWT5/AcziM=;
	h=To:Subject:From:Date:From;
	b=vC1GaGpHHCE+eoK9AfoujBelwucLEXFY4zElK0pHHke7ZTaTmMexj1JlNHAoPFQIG
	 J2A0wvM/B1Vodu6HHLj+wAeQylzyBbl9i5w2SJUdvz/M8Arcaw9pTHUzSBeA53XmwM
	 RZXgSma3I21hmfZunATxZW42DGx5NgncUsEg+N10cCnxqdGIA8iv5ZSAQyFgFb50PR
	 haNBCO6TIT1G0KUrr36rcks5oHkSUR/XjykE8MK4C7Eid29+kRwcFrdvhuWZ+RDkn4
	 3SQZuZt3Jbi86pGQlZB6zk+E0+Rk6RSC9d2vXbLjgroZZ5UD2NOYJMV4fr44aAuelT
	 0qFYrQ45WqqlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54027C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166563065333.19296.2748802085954058948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e330d1dbb026aaa06f5853aff7809d2d9e9806526118bb954c717ff8885bc245
Date: Thu, 13 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665630653
