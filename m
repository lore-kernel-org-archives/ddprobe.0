Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB7C320C
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03D6EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682718306;
	bh=1UnCPnfSMazbp5E4O5tzU3JLjcsQ5NxXtjTuW5DG760=;
	h=To:Subject:From:Date:From;
	b=oJyxVa2Zj7EaXLrrdhJfYq7skw82RSRH2S6P54tIsvMdmdrdGmDU8bDEteX1tdl+r
	 ioH1ZALcMc51ssJhFtStMc1Ag/lgzjVaw5IaLFV87CxHotcIOcRa4bD5mkJ3FmYFEh
	 MtIprj8CqFG6L2sk8dKRZ7WAGSpTUtre/ldsj1LjkxQQYVbtPga/BS0kKlBOWPwEIA
	 +xHqYmorbXf/RNmtOSw3EPqZ/tn2700zgF599XGDnjlFOOkkK9XHNiZQT5k7ocWo6O
	 Y8+rnINSdEWmBaixpk/VwlJ1RTrLSuNjxa4j/iZMXQYnIUOySW+taqapsWiEIb65qk
	 IoXn1kOfnrlEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9317C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168271830586.28578.13656732589633849694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407b4e2f4e862a187e259a288c393311392570ace5d6a2b6c22af4592642c8b4
Date: Fri, 28 Apr 2023 21:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682718305
