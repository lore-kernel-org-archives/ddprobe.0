Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27B42F22
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 745BDC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670368854;
	bh=FGC+NpdVjy/MAIOyM/tAJaO+hvaYxhAbLWMJW9b7N14=;
	h=To:Subject:From:Date:From;
	b=EMBkB90jdmtHGv2SkfYsVAaHJZrraomC0GWW9az7+jdOg4ax66UHht0rp/HubIAfQ
	 YOyS11qNeV0XSZ8T91dIjE130NhLCzb2xSQOnAub1/bx+FWU8skT+x2LV3UnjCg4Kh
	 szEcpOQRDwW6+VpC/e3m06iGKU41QpRVglHgM8LR8mrp5vNlidK2gPhwDefWv7xHyg
	 s2rBEMt5fmDXHfRs7KvTqQPo/ke3LMyhGR27k6Ww6iLUiXiSGTxjW7iNRlVyPRJM6J
	 2Sorvb5/QnavM8psU7xNssZZPKSl0x/4jKOKsHefycMKS2TTtHC54EHYpUzdoaq5CS
	 tDPsYM9mThvXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563E9C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036885434.16330.15633805167114154324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fadf1ddf5f06cac3e8fea004b402e6416e1b34508b6ca84e21ac4ad5d04e5c
Date: Tue, 06 Dec 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670368854
