Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029F038B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSBh0Ryw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D14C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701650296;
	bh=AGTpy+mE/CalXeFUmQ+elyZTtKAP4O8doiaZAr9p13I=;
	h=To:Subject:From:Date:From;
	b=CSBh0RywVmVR2wexllptbqQZpVg6sRHfif70bvs/sMlrqbT5PQXVJ/rRO+aGmiVhh
	 8rOqy013Hz5mrdu3yUtVx+TbBn0f923eyG0dHnjiMgDnuB/r1m2Ov0cKo/m0vNslGl
	 IKr1D9voFP6q9eyyOkdb11X9ak7OtK5JEV0LF3rw4vwsuK2TizPt19VJwMgDPicHW4
	 fl7XVQxNFbS1qhKqRjZj45Chf8TrVKXgxwCRHMAUm5sJ48v8wz5NsRxSe/cIbR0eeY
	 gsWvavHZ/7fR8oSehkIVjtUYIBHd1o1YPn04ifygppf/oui/wfFE/v2nQmj8t4y8o4
	 IQU3yMbzkF4yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D825C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170165029637.27981.15158268458053076552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b083d880bf5c5c6367236d5523059925be5a4e45517fb0720bc19f331fb1679
Date: Mon, 04 Dec 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701650296
