Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD814C99
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD379C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683321485;
	bh=3wyo0pMptxpjvrOt8APuwOoiBt1npB2kYzQ0pdiYgy0=;
	h=To:Subject:From:Date:From;
	b=GIgsxVWS5w5z9yYq9syDM8jr4VrvOPEMypUn/FtRMuxnBeq7WHY6gI+igl8V7AlwU
	 8myUVjxq5Yl3hLmBUk3G0AJamj/zcYEKSzIYVtix2MGIa2bdHfKaoN2PlzIKQiLYWY
	 pzkA6RxV/R3WYuCxFfZ4vY+vUvPuUDnStQsAW67jLMyjX+BcUJTPaoXNiXmdHUlFFY
	 TkNtGh2bpTmgyXkQjjQfsXaY9kH8+uws4DOfBGVXWpjhoAq+ZiU+tB8Tl0L2BguA2U
	 P7gFPJmCOs8IlTMMjTfexTsmAWs8+8XZllh1d2TRaXvWdyjheykbkOmnXCyvjOu4o1
	 G4TxCm9y9vlxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD70C77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168332148576.22279.10739616180038461174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b660d50844cf84b043aacd35a5a02ac52d0a50f95502e6b0938dc2c16a99b05f
Date: Fri, 05 May 2023 21:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683321485
