Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6F3B3D980
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh3CBriG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA6AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701457696;
	bh=/xrD/3rJaCIWj/grJCIsEdDTMPzs0HEb9T5pqPjcnVg=;
	h=To:Subject:From:Date:From;
	b=Gh3CBriGR37XXIsyqoBsJrUmiqx+dQU8uQTs9SzH3mt4QqXh0Yrigd3QVvO5fZ824
	 0o7cJaK0HJguabip5SAf/GZp9AMhJ5cgR3h00+wiNV7nwfjGBbiPabJsPKnUCxp2w3
	 faSQFoWdotuGjBEB3mZwf1YvzUhXBsho2WmSUAcTfvG7JiMVXR+kiRmyVP6vJIxbsf
	 Zi07diHpixD7+eWwCL7lC+xoWJtcypRTdb38CiZ5Ba0V5eNC7EqyR8KOImk5sQr0IJ
	 mArav7qZ5ba0CTxHv+QKVfqtCbAz8sv04BDI/EyDnj50EnDfW/2HyJVxKS751LFj7u
	 tJy5QdFqJ6N6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610CEC4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170145769639.26951.3322221010229592554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6bfef7d33311888f44352d88f12ffd49d5ccb77833ef12e5ca9d10625378894
Date: Fri, 01 Dec 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701457696
