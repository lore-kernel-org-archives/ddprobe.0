Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E4915E94
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9+lcQ8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89917C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705089496;
	bh=2QWMdD/2e1jbn+OXcagv9j0lGrvjqKGg9z6GhNAmFQ8=;
	h=To:Subject:From:Date:From;
	b=X9+lcQ8KcIIrPdx8JeNZr401agrY2iE1NPiTGX9SOJjTda8la537EZAaW7O0Mveuw
	 vtImMZ0MuzOuXK0ZIqjfqzBUjdv0yLE0MX6yRa0Ke24PcAgIPNy5XxTEM7tj9X/KcZ
	 6hjkUM0HB2ccAp1H2LdHM3SwXK1luS5itwK9z8sqtS4jXG9LZjKE6szG8SEI9W3Qff
	 E3Jh7X7Vn2uEt/YWvBl7xVuTED6g1qoantnOfp7YvymGLWYdva7Gh41n2NHqUQ5HzO
	 JSpzyLvtXHhY5L9CscHqE5MX7YazmrpP2d3isJU4TGRQfYHnZlEeWEvcnHXRJ2PVXV
	 STpM41lwzpdZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A31DC4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170508949639.25998.17920803644962998513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a415002eb3c13277e41736498071f53b769c819c4c7566b188dda76437dca3
Date: Fri, 12 Jan 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705089496
