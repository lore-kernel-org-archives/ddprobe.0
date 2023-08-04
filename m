Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B80918026
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 18:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A5BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 18:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691175188;
	bh=tQj61hZ/VedraCW7VL9EJ0TAUUB0ud4ZtyGfH2yCAuU=;
	h=To:Subject:From:Date:From;
	b=frBX3SOU0vc48X3R5grS3dh6FxCeo9wHOaNwkrmz0SSIO8RE3L/9a9XM/VaRQhGqw
	 piRb4GiThDVC/B3J0zfpZvJO0GFC4urxcDa8DdJyaX9gGr0nztb297fBpZ9hT6Te11
	 uyCcsEJr68ebgy6BnMY6GgwiaSHOALR0UAvQa/SYkZoUPyR1hXQ1XxzwGtmDhggifl
	 5yVxiQLIzLMZd5CwR/9mQEgE5Jbyy+OFMddyCKPzDiUKhnADoAWRm2ooNNN27kUFem
	 VCLk6PXNwIlXtMgzgwRL9XQ3+Al20cv9+Lg1Mc902Q7lja2lvJ6CBIWt5R7IQiwXUU
	 GVYVLEzkrmN8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7B8C001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 18:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169117518869.26559.14054474795025872837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d30c42403d8db35681560bb2baed35b670c940c7e6030927a4ed090e6bcb747
Date: Fri, 04 Aug 2023 18:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691175188
