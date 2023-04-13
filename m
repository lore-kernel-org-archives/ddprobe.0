Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B34E7E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 15:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F50C4339B
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 15:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681400225;
	bh=54WKMzxupcZn1b+0EFoUH/4niGkVhVEC05Vt+g56wU8=;
	h=To:Subject:From:Date:From;
	b=iDRi5C6nUsMlhE7IFfkBReIH9FQJ5Jj/aik2Fjd/I4hxd6IkU1BsQbK7NkpUbP8/4
	 Of5HOrUqDc/F0agT5VOqPw9Hgw4EijakIgEwWj+QCTqosTY9HuKkt3WLTktgsdfr+z
	 Pedu5SQz+gQAQvPkN8G93LEfD18aqNYo68FrIjL5klV+azUMsX4pehZYS2Uzmmu7NC
	 yxmTqcE24qBHOs9M0bFGz1jV9u7sqJqhfrxc1AeOF/lEbD/eOiCxIFt5eVDYiwFg5s
	 wNin05fUMDGdW0XvdcH4N608O3N7x8vtpo9cT8gY9b1D6XNvhI2ZU8xTY7SOTyx/h8
	 Yz6SoMlw8696A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EC0C77B6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 15:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168140022579.5630.9327274782628364365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0acdaea71905548aadb1431cc0b784bd2fd8f733fa43405362a07acde12abbe8
Date: Thu, 13 Apr 2023 15:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681400225
