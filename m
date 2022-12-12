Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DA01848
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FECCC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670835687;
	bh=h08YiiDoILlf5xquiJtiaSn9lHbR5tB8LgZPQ6hAXNU=;
	h=To:Subject:From:Date:From;
	b=UoQrwNj9pAqSgp53MuBMZcvyHyXzNkFXwY0VNeo1m0kWUb+pbvvxY239kUGi5+eHf
	 8bp/usG+LEil6bl2mDYAK5NIS4xKZ+IJhxZFuyMDSHIog3J99ielcRQKVMqzYPjMAt
	 sHD8Cy+IcsWVWulyK96MXzLa1ReQHMiD1ZZwhqUVUz/uvDPP8GwMloHbimKnQ7zZTw
	 Gjj03f44EkhkvOxBqnVwtyaC8SOgiFJBXJ/o8afNsjamLpMBDwCu0weO/1qknOETaM
	 PcVmRxABEnAvHmqQPGwwcI/SFp+m/3Bi7ghogV1xjQB3MY/wRLLLwCyUYbKwQXciKj
	 rdOSJBCM+0TwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665BAC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083568741.17432.6439286498799752734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b7f77921a4decacfa2345d718eac01f5744717f0f15943f7323bdc4b3109d3
Date: Mon, 12 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670835687
