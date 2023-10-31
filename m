Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C201DFC2
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoJHi1+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D57DC433CA
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698762496;
	bh=7qrKhEP+LLIDC/qqgR6gchiGRC5DBFkBt9y924WdRSw=;
	h=To:Subject:From:Date:From;
	b=HoJHi1+EGn9xEswyzzDWCPi1FYLP2jpmV616WOwKyitzJaO5VLjWINnOGEv7ceiCQ
	 h/biIQERfYdxNm51fBQ0qjdQi1YcXMivockwp70RI0U3Hr7mLgGS4UDz7zFcxe3FLK
	 GyCUNmRpxrnRMFKDMIxof5e7ke2Jvy8H7ydpo2cpgBiIAUyL4Wg/5PStAphuQr2qgT
	 LKwAIsPmWDk88dF+nBxP7xQDJGjNGPN6P/xwPskIfXf+cFukf9qwW9vkQ7DZImDPmx
	 nCQ7g0bJZvWw9Y/Wy7SsBS6OLb4L0Txrvzg9YEb2DLOPe8/L7RbAWJ5CxOUO5Nsb8n
	 w9NVuhO3uIpTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E0EC4167B
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169876249640.2448.2786003986610487495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4dc1e2582b669900f6575a54996ff35fdedc11fb97dd996f292592b810d14ef
Date: Tue, 31 Oct 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698762496
