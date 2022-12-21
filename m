Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7511FB3
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1FAC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671607887;
	bh=k4jfE8EQXWaFD2Ho399VGxeujjOkbTs2qXaAMDU8+PI=;
	h=To:Subject:From:Date:From;
	b=kS80jwGqi2Uxdo6pRR9A2UC5lJQAx2qmzE9s8zjZM91jImvOjS5yQI+Vsgu9nMH9W
	 jFFG9+OsWtkfNlC0AV1m6AYyGsH5By+HLCl+zMG7mzWNGn1cyO5VnGLwXygQ/bmX+A
	 FSsLOVuQr9jFvEDxa3K8gMn/rU21CniFvroVrJGXC+vAd+4CMaCc/8lUojHEU+muo9
	 /jg7OfMLzl6DO2AlaPsO2jLuvcKfrurr/Z4GyaMTYgjPDnADwit4161pj5Jtsa2lXa
	 B8qZwW19CSN1guS9W4v3Tx+1S6dtOVrjyrQAMXOlPeBWZc/mPaHuFHVmeHNV45ZbRt
	 JT9ZfuY414EmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6226CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160788739.13672.8994847977630832991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16075ed323ea1dfb0c341b2c47fb4237283c127934232e4237ef94c8639f1a1b
Date: Wed, 21 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671607887
