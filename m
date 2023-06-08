Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A402A10973
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 14:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EA1EC433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 14:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686235386;
	bh=Ii8iS6FL+Bq57ToiPkbHUNMrqm185/naUyyNUMNq31I=;
	h=To:Subject:From:Date:From;
	b=SnLHDWFy1r6o1xY0feIc7++wdPitT3kmoBZE0mZsB3YnSLq5HBcWRmbmZhPU+vcUq
	 1MsB5RZEYctS4Lm5bJA5+U5FFdP0Ae43fTR2b1Z5OP09zWSvkfmCqQgtcsqI/5yy7R
	 scpu76A6mnMk49pyFfZ6FjT2zYR3FN5sXt7+u+zvUWPeBu0uCJ056IJKi4g96cho87
	 m1piDmGK0QpCbR4GrFYDuOoKGDZs/BmCBJLzgy/JTqS6HjGBQ+TDlq1MrR92QeZOqa
	 KIDwJbEKcWC4AUOkPqo1f6/rjj/lZ03tElS5rlMLy+0Er3Zh/ueDqlvd7TGlXBGu+X
	 7J4VpzYG6XdRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDBD8C7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 14:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168623538588.22764.17747453141528372467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71295b975af16ad8853e1013192a1be270076b513aac188ed991cdb84181701b
Date: Thu, 08 Jun 2023 14:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686235385
