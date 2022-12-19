Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4867E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6DDC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671447087;
	bh=lv2aqB6+/uofbQks2ZZyAY50uzKPBjgPnRW094AaSiA=;
	h=To:Subject:From:Date:From;
	b=HFnzn+qUo88lTZTGxFkflpyGQ01fZFgU9TP+hjzBdYtj9SGOz4ekdy1738lY+K3iw
	 oLLoB5Rvhtjbt8oaUODtr9NVL3wt53UpykQnT/MYHiOqVi+4DvItYRurg/1w3bPsyW
	 n8ryXgP98zAD4rDmYMvPQ+LMKF4RK9DXrW7/Zh8dp/Wv0EnIQgXLVvVqT1pVhstg9q
	 GcWhNqRvmbQINZm8QMyp+TNWhIol/Y0dEuWRDh1MmorO2ZUrEh9hAU8ChNnEk+JjTb
	 blNi9RNFcv8H72Qnb7tm82UJgvqEmVKejI2VPjz3JE9lxTakJzjaQ2MG4hatESAaG8
	 /iInARyL12wNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65478C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144708740.9748.8452155937045954219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417b1e3e3835bb2e86e90319ef5066231ddf09523c87c421c16688983fd0c34f
Date: Mon, 19 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671447087
