Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F4A18B06
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4veL/CL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6A5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705347496;
	bh=+HhpjwM1KUSDckKENJHeH+BvkyM3XyyRW6yoEUe+4+4=;
	h=To:Subject:From:Date:From;
	b=f4veL/CLGZk7GiL4Ke5eHSv/OqE02nhezzWvQiH3xKQ870DjlxSjLd7rK3CTrmhGx
	 R3lf3y2PNy10kx/h7u2JnTRRCV61rBFPvNBkIAz7YrZw1VIblP8cUZAUsfAM1DaZ5p
	 PBJAMeDBkAnnjUFYyjkLf4YMf3H+XifUrkqwbkbls4vLyiLyMTwwvprQ/mhMPzQWBi
	 8Tu8BibTfufzW9V+b/UzB0hZLrcirmZa4Qu/W2mwGlFV/kTb86I4E7W2nDXv3jkLfd
	 k3MpHTRJgnpxT5Kkp/OSCV6ay0mymPRF/yGulQln3kNqi2ZxYmeJrIu8RsuDu6jeEc
	 ntu+uEEJ+4c8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6028BC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170534749637.27710.4776938382709246595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30cb44ad41c2a1d3886f07e250f97b5ee775df1d40597b539f7fcd064eee72be
Date: Mon, 15 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705347496
