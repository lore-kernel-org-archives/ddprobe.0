Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C007B17C5
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704F3C433D7
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670129454;
	bh=+1DelBzSgt+l3L4qM+7IoY4L2n8yql6aE/a7+F2r+/M=;
	h=To:Subject:From:Date:From;
	b=gjAXM5enkAd74AvCvoGJ3LvD913+s8rfh9fYE7jw9tpRmc92IeoeEz3wPuVpttvxQ
	 0vf3qi2GIz3BU4A+zk1I3LIv83Isvgw2PHMSU98lAxTt4b0y73bq4acBicuBt6fkSa
	 ef2Aou2asTU4nXeD5KH95Ie8gOuAN+hdTLTXRrqwRDZytMi65XF50e7YSZwg92Dehx
	 ZbLGh7n523VjtI/3K6xFx0KO7eaE2VaJ2yOgaFbb5UVYyCJrwu7aaIF327x9R7sWES
	 E58rKcQOJBh4/2jCcDcs4iXXOEDsD9mnA0fwVNRHawh8/qMNBhD3JFSE0sSfcdItKC
	 vtTcX9jStCiQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AF5C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167012945434.25397.7518368838016381194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27210f7dd9316dac66c64832309bffdc99e46ddb956ad98f45343557b80179f4
Date: Sun, 04 Dec 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670129454
