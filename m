Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85878C06
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 11:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 45591C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 11:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687175469;
	bh=mGhPEkFrj08XA1hBF98aBG0SWTg8oD3H4GhQnvOFTYw=;
	h=To:Subject:From:Date:From;
	b=cKFDexft8wtwIBw5Meund8VDeWkysqVDG6f7LrrmNdmYqULE4j0ovj0CUc5QrNLm3
	 oFO2s+43Vo7PuAl5bkUmKFhoncKciyeqG/fmv1r/oG7Z1lVKv8L6wpVZgchR72On20
	 tdaaZ0/9U8DxtykNm/LchKMgI75P+aFf3Qn8U6HWM3b2IkbEMqEipOIhpGxEQtg6bB
	 WxKtcTI4bTW0576IK8wmvcuiRd8wctWP/tSzDNVbFxBentQFo7NHhbm/KHzN2VsDKX
	 fDm99JbTJUZTMwHENazCdJfqpZY5cXf8rlngN/8ZUVv1VhQrWF384KxXLIQl1QG8PN
	 KDcRXU3kPC3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 255CBEB64DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 11:51:09 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168717546913.14434.8800679327718900797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1277e4acd4db81a0ea462655d60f88b75fc1c688962c2c56cfd892e97b03d27f
Date: Mon, 19 Jun 2023 11:51:09 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687175469
