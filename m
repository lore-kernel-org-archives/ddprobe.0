Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54281EC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E97C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687309388;
	bh=6NpPaIjVSMTu66K3/aAeYrtLRk6IiPcXlB+ywViUdM0=;
	h=To:Subject:From:Date:From;
	b=iEmY1Q/Lvp8t/NTHhhiJUAneYxVn1n7nl6rCenVRLKEX9biDegZC3XK9MX3nPdEH9
	 EBCkuPaePVRgwmvLx3xguEi0UxPTscLLpmXsbGx2kIaOevoJonlK0ZRoDETl7X09yt
	 X1QDUGSr1Zv9/H7wedYYqPrH+F8sJEZ4r7U1D/tjAFh+RPXkBnV6XWa6odlG9RUXQ/
	 Lu2Fsv1l4puxmgjfFktzO6jJ7CzcM6tJdGiJaj3gkWMtIM7bpY3t70hsW+xZidtrZt
	 RNUDr053VlrqmZl6DlxF9dVwmU4PXAPtRj/5Z9mzOxydjV10z9Dr8ztDtsBYSzNZbU
	 Ftug/zsLvd3tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF490EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730938866.20060.6997799717715288332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a794a1e0528aebb7b9e1812549f1831758886da33552ef24276a4b5c67468dd0
Date: Wed, 21 Jun 2023 01:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687309388
