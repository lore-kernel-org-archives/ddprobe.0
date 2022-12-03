Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33FF15A0
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CF0C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670035254;
	bh=QmKdZuc2DuP7MeIHo4Cx3kYwXBfbPFa+8eVocgwQxOI=;
	h=To:Subject:From:Date:From;
	b=YBAG0q6Qc8aY2iWm4yJl52n4vkeA0ww7bPN3nreDFuzn6kWpw6q3Z19gugTiSIw/S
	 ZKN89/PlFn/apXyQiRJTMkZqUqH4AKXDKCRLzsmhTRiywBrsTPVNAyI54tWRPeU3uM
	 bxpPMQzUWPVduDK1ZMy/iW9HxGlsdTtpldxuZ0hSZlR0LtRNPbYzNRcy3mHIuepJeT
	 0zTqJVLKYMq3Vac3eAzZHCwjvF4O1zfNMLmh1QElUgMtULOp5UcbdKtLdl6n6vDgRd
	 BzTy/jMhcs0wp/FJ+pE4uCdklamva9nuyg5vtpBKLZoFBwDL8eoNVl4Je5U//Kupr1
	 N+ypxO42AMC1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E882C4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003525431.20148.17847461169872233544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e71ee9b32fbb3cd48c59fef26f4d62d4b94e6cade408d94a21414ae1e6178b
Date: Sat, 03 Dec 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670035254
