Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DF78466
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA590C433F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672758087;
	bh=WbUhDviYOmsOK1FkS4WrHKO2/BVZ1S8XLPdzVtq4+2A=;
	h=To:Subject:From:Date:From;
	b=eC1lmWKx1cQHdT2InRAc2St0hy2IxjCnsA8mHdm4DhvOol74oJwZoVVTNFmndiCxw
	 9fsdAdLlGKEOOut0Iq9iAImgQNDAxYLVvKHF0GFN+KJweWx3nutYpSEdQcvDTtPK3o
	 Yp/BvxzvyOe7muZdTmiBpbGfPcxbv5nWxBMAxBsVZPFJ/dW3MxPXMGwgfoXUTfuRsd
	 Ew6i3rmEuQU6SA3ih5INGqlnSpj7K/3pTiWo4WfMbWNDmtheCt7khlCFdhBihJ7FtT
	 f5s7iklkpw+Yqv+NeuMhYrdArSnFQiHztEE1KdbYCdc6IXLt5WS5uuNJMoPh+NpS9W
	 8bg0PRfUMEsNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8935EC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275808754.1512.4867849807545044328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef0606f5ba8f08c6e4fd3803ab3d5d6540314c85e8f14b18b3fb1160a72a604
Date: Tue, 03 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672758087
