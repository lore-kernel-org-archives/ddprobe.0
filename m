Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4553F7E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D92C4339B
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685371325;
	bh=MbRatfEf2DXMcVfl4pKJlXgDRw+LUt7frUL425K4Xjs=;
	h=To:Subject:From:Date:From;
	b=nDKRfc69LWRDls/AozD0pIOXvX6OWBFxWX4lLzrckU8KpphqskNBezKlNaCbSwnYL
	 NutXX66B5Qv2m/WgzHcABnwCQexkxfbKTtzdGe8b5Y/ptmEsKkEl1bshUzt2XML/0C
	 9LweJ0yYiKjDSYqZwOgZi7KP9dGn0Xk7kUlwzL3G+lerVqfjBLY9ZuSFvaimsqkl5x
	 NBW+a5YIiQgPkKiJC19M9mF8bfVQkgqO5sI90dBO0XCp2MGdX0sdgKlJphkazQtn5j
	 2IjJIajZN38XvO39QdCbxXDAJwrD6NP2hiEa+oUXiJRDdlrqbEnsHKMOFg8XitXAce
	 42wRFJvt6sccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB813C77B7E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168537132575.2062.5644579302814167313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c314c037a77cf89324f94f5363e248d2ea5cdd07764d5dcfe8c16c02869d40c5
Date: Mon, 29 May 2023 14:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685371325
