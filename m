Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA512105
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0C7C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663368653;
	bh=2fKCqUCwtLWCHTnI+01Ku8+rmdcctUxZ7QoZhNhh5Nw=;
	h=To:Subject:From:Date:From;
	b=nHN5kB6b21lQQ4PPh6HcqB4BOjjc6UpmMMw/taRq82p9k1zZSTbVS8QnQRDb/l3pD
	 wRI3mObBwkjabzAi4NokpdYwXM7axl8Rm+9EpMZbtQbvGzMe/zGzWMQRkv5X+wB46r
	 iFU8+sPgDBX1deCi1mNCP2sQTjN9UlM+Tsg7iCHDGn77ZqFEw+RaTHshPONuxIaDwO
	 m6J3YVXCexxTRAANVOzmmaVU+9PXmzZZw5n4hCqYt+I9Xjvb85fdF8DnNhNLBCOUhT
	 igku86cyP7DGZCfNsu8vLuRrBuTljbzPyHPBoR3HpzQeeSdiCqOGEVedoP9MQophqF
	 XcS0Sex2OtaTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5364DECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336865333.17692.11148938528690776510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dbf284d520675c1c7f8712b4fd6f6d248ade9476d855aa0d7211dbc28e23b8b
Date: Fri, 16 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663368653
