Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03F828EB
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B642C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673443287;
	bh=IYqQKKuBC7qwqCQvRsh9owhIk/jlSTtQNHFa10s+29E=;
	h=To:Subject:From:Date:From;
	b=p9kUPnr8m687/tZZ8Mm/B9dWTsDx4MQdUV6A6gMH2W1vhbFAS6EZz1lUQyb0SFOnv
	 E8398p80ngPYmXSqwFmAkqmbwrYRYIMaPHbjchDyxuHVyh7DMvyi+tNFzI3/dirtsQ
	 o6ZIMgoLbekeFLqLak50qjARY5qZ02fzw2Yo5pkdbQxUusDPa6nsBrivbUUFScOKjZ
	 U85qwV28hdE6JxdcgWqr0L2ZXVr6fOEzyno/JWQ/Hzup8iZOffZTJBvqyUIavWvbAM
	 a/3mSYICzA4DlF84OiPoGVg5ZLn7yjKKL+9JtDS8+Bdx94tyu8wvwNH6uw/1tEg16I
	 YJLXthRbE4u4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62615C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167344328739.26665.17681070282954460972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d9466ac83ec586fc15f50bc45307051dce7b99273752ede5aa1f8bedefccde
Date: Wed, 11 Jan 2023 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673443287
