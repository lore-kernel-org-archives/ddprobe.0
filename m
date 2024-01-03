Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FFD1C2A8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv3/u5k4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FB2CC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704258496;
	bh=uG3zo3cuIdf5qJDDaW+la1ZjxkA1KAKO+m4INUuef5s=;
	h=To:Subject:From:Date:From;
	b=sv3/u5k4Ba5cVOe1KqUjeDWPJFP+N6bBkuQc7SZn7f4pSFhCSi/YyGtpOru/mp3vm
	 qHshJqFWKQS+y+F8ngLdXa3R0qF9X0dvWEpjmF/cUtxoXISq53QqFHW6BYS3wQmnoC
	 I9S6Q8ZdQtt5OFte2sh4s8FgOVepL2M17Ly6d9k7WKSgtNWT/NMaOm2oafrl66tzuG
	 1hHPS881GEpOyK55uDytBeQ+zzJkNYI6u7QQNQB06vgje3xpkFGHSif056qzisVmqe
	 iHcyoroR8NkalLCtTaRQi1yUwoiSZp7j1pe9D13kjekjUtLWben+aTQm2VrTC85+u7
	 eF1aJmJBIBwgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B5BC3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170425849639.8055.5763565497494872507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4feee786b1cb48878085c9b2d539b17a34e2cc6fbf0d00e20934c6905beb282
Date: Wed, 03 Jan 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704258496
