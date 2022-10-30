Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6C4194
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 775F4C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667089854;
	bh=CRRbqTOUalK1Qr4Z8cE0TTek88kHy5hBgO/BnJNuuFg=;
	h=To:Subject:From:Date:From;
	b=HcWYNegGBC+z0oHHd79zolvlNV7NJw442wY99sDrxF79bm0GyELDpZsxlbQkue7iQ
	 ZXou9kfc4zs4PnPD72DoHMwDxcmCiz/08MHB7ege8DrqX9RNRyKF0sl/5tpfxQZkd9
	 paWRST+LDcuJHUOqGzDwzoALirS2UJPjvN9HXPqckVpMKsc06YSgBHbyfNpMA8QfoT
	 UBskPma3+dns/IbH2zK1hHThrMPOCv5Akmf8CIhyp0NrQoQ9YRZdZOWL8mEr+Dw3AU
	 N8gPiTIsc4zx6y4T7rAc8DPnLmh8FDg41pKT64Fr7UFg8bNyhitOzCL7SawqunpzDs
	 zhMqTCffsVvFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57975C433FE
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166708985435.30935.14390742609099390033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd079ed09ab7e96b67052f07d41c96f88fd8ec6f10c7eeb24cfba68f04fefc3c
Date: Sun, 30 Oct 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667089854
