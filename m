Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864B0523E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 17:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 006D8C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 17:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686504726;
	bh=iSII8aUJ2UkUcdAF3pz8bf4zlS4JXCQr8UCmFgxfR1Q=;
	h=To:Subject:From:Date:From;
	b=DjTBEbXhg6mcbPsdJlFNAL3IIcsIx0bRXGc6Knd9pDfIev6eMSGUz5WLthYNxlAUv
	 P9hXMpRQYmI8lyrRglZ2RJKYkC98EtxgHil0/yIVee0DUD7szqLemf25gYkaXwpqP9
	 e4Hvj07tIbvJYRyNEw2Lb8K57m8+enXDqg7uic+Eoxr9gZRLuGIf2R0XqIPQL//858
	 gbpyeh0YAdRad71Esr9EF3CGirFBtuhj00uQMCtC4PGzlM4/lut7rx1UT3wLQqweTk
	 fn5GZ7kG9O5U5ktnHRUP8xsufIqhwBByVG9+AMbmTnA+Ume047nVLgXNN/n9fmHCji
	 lWdNb+nP1w3aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2590C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 17:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168650472582.6713.1891446918188381658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f558b48553c81afa6aff201874e84262a7978373e21e21b779ebf420be960536
Date: Sun, 11 Jun 2023 17:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686504725
