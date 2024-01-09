Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003DF39ACB
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elkxRDLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E40C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704811096;
	bh=ED+1WeMTmDHJ+GdI5j1EoKLGVl2Q4qDpgLCl6f6H1M8=;
	h=To:Subject:From:Date:From;
	b=elkxRDLCPdA1jDYg9bhw/BxXYAPczbwFbUOoWevv7mvkAVTsxLjPZlXj+5FL1nG2S
	 sniS5zVj05zvfz9lpw1AoNfgdx359xYPEZu6Ee85eaimrjt2FLM9t/9GN0zOqxsRl4
	 lPnp8Uk9i7Hfo4Ah9zTsgYV/6Oz7w1J32Lnn9mo+vjkP/LoSxRsEMyKJaTLy8J/MMp
	 jipHxdCid3uDUl/e7UB+0cXpYt2PI1Ps+Is+dhF5B40pUNesm6JwEKL56EPZKNfk44
	 InOSZZlQGZPCFLP5FDCYEomRGKlH9RMcFR8raPB+0ZqPXLSyAhHleuwHcvY0evvU4Y
	 7G952O1Yyk3AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620CDC46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170481109639.18756.16688993856604151322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f717a2d248bd0f093a1ac72c753849197d8e0192cf1024a45668cb51ed4e31
Date: Tue, 09 Jan 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704811096
