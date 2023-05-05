Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38721DF71
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8364C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683323285;
	bh=DPcSUJl9cn6tf5xt5kKQAVWg6w3wv0Thj/sP2CNCgwk=;
	h=To:Subject:From:Date:From;
	b=hOtP6mt3vzLEahIFHtFU6NXHkERYGta4D93FHKU9pwtBK8D+UH3VCdsRpyPhEE9HX
	 QRuEMHYTAsntJqHN+yv9yP3uIKR4c0+AdnuMyfWQ0OoJGKRGyWCH+UjTW+xI7l5vhG
	 TAOJLd9qDk7tI0rtmJAwwi/XupzRaSCtLC1HHs1diP8sOfoBhyZ1yXpQNWQdG/okBO
	 RI+cvaL2Fd+oclarkp3+2JYP+ykReIpws9Uuy35Rg/gmyUqks57d35agWWm4T0k7Nf
	 +yFu241UZIoTVjleeCtX2k7rQGdOZYRRtbHemmOkoMvHFV0NXkHBi+TZ5fbAay8f0D
	 6hkQKnl4C2GBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3917C77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168332328578.4633.18104363431477242285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b8f47ba611bf0d15283fab5780e7d2414f24c22b05d126646779d9eaa48331
Date: Fri, 05 May 2023 21:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683323285
