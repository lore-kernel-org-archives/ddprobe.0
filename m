Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415A6525F
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 12:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2664C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 12:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679660465;
	bh=sqPYA/iU9Ng8Jsfh1+rsAVhW7kFvsy4/y9R7DM7A3hk=;
	h=To:Subject:From:Date:From;
	b=oLHZg9yhCxKOReVD6YhAaU9d59MahByNLO5aslL1Eb4JsLT9Wv1rgKEt5ArSegYRH
	 yrn8I3xPjC+eNiiFJQ2uqLfWzhmwlNFcORiF7vZJ7RyxwTaA6TrTttZHCWqVIu3URA
	 aYH8D6LLh8ab+w2AqTwyTA5g22IPVMCQykGG4iWgqo6y1LlQw/T/5aiHNz/LZYc5tk
	 iRRT6IXp7ZDCkEOJwQTDLzsENqjgjItJJnRazy3FHBulyzRqWwcSKA5JDOcI7uFGNF
	 vwA3Ivqpzfvynw8j4Px+f3RkHCQWs5NpElatAvZknJph++rFCUeXtYrpsrF5VhzGXm
	 5I4/ngHBD7G1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55D6C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 12:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167966046579.19573.7969848544329294033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da84d23917ec4c4a5995545a14aa2589352be1609b6a1f770ebbf04f2b49608
Date: Fri, 24 Mar 2023 12:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679660465
