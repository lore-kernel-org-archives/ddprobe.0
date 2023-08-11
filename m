Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B6D371
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8848C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691715788;
	bh=DRoD4z29diiySAvUWXB8J9nxH+MUrRn8J+XAeiJwZFk=;
	h=To:Subject:From:Date:From;
	b=K0GkA8/FuSa/Kvp01VuLcCX6GHSwmt4Tt0idCEsqVGfIppwJzd0dVei+PXTm8AnRf
	 ceA4vN4t5x1E8nERddog44TwzOWmITBqMLNIPX9O9D+PyhaQCQfwUTxrjf0ZmCaKCn
	 euYyXYgGUa5oRmreiID5i35M8McmtluZ7UeQFU2r20jMIL1dtu/OMpAE2hEXmwdVLd
	 FuFw0fgZ8RYzx5FLCibrEh407hvRLTxYXBPbChDIqsVGbCIfvtwj+Sx5Ppr1PyhV4i
	 XNhm1L7rFUpVHg/QAWz1Ba+pEJLVcJuXKj7USGgdgjt9qBSaS9zPlvzEXzD6ibJ20M
	 5/hLnO0rhrCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8151C001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169171578867.7658.13610394703497511034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91f912bd4e7d8b64d5cc6956b3db22ddfc9c9640fb9d1c4cc3f41b4756b6f30
Date: Fri, 11 Aug 2023 01:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691715788
