Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D1C6AB1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7232CC433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667986854;
	bh=J2HcNS8Vmw56lmdQoq4ZDnu9cf5hnrRabZtv9yXgJuw=;
	h=To:Subject:From:Date:From;
	b=CdWiQgdPZ2P7LuWzmzN6HdDM34SH9VtX3IweK2zCsGU98eicQlYfapv0JXvfHECT6
	 Tb0ZP9lyW/SHXnPPt9hjHsSCiaWMj0r7iex3UeQ4bMqbwtyhtAjxxlQ4IZxa/2US7B
	 8GuXVtkmThzTW7D7TpO8aJP8g2sWL04LodqifFyRkQhFp1yEGmFPDiB0neBZIyu/8/
	 0FPrddBJdo4tGFADCXmLY0ZErE6MEPzyx+/B+MLmDcGfPIGaB/GV0ZRqeI/YI3H32Y
	 KkJnPmiXNw+lSZO93zvM9YsaYNW9hAy5xSIlxPYGdo4Q7CBeOyOjj47r2k66L0prBg
	 nsd28j1YMsktg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53125C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166798685433.7450.2017419934334063335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f72dbe43b9bcbc8614b91e11b6d8d8a52b9275820a8d108cb5a0e8d9200b38ae
Date: Wed, 09 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667986854
