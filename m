Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887D423AD
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 10:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA7F5C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688207648;
	bh=DkB/Kqfy24lyUzxGEWrHgHV8kzSR+8jG7bsJ1CuvN14=;
	h=To:Subject:From:Date:From;
	b=N/NRJr3G0QImmFDmRAO0+dIaE9XSj6b++ByeSiTMm+qwr97MDJ+NCgfTliq8dYC0q
	 hDugmKR3pgtuXShTUSqobWpTv2xxnLSYZeVbB0EGx7EsaDT2NykABo6idpJxqB58X+
	 S6yN0av8v/eKdi9N4dNxDpBjaHccC3W+laB2mLNlVxsf9Bmp/NV1fDWxJKmVbPoi5A
	 raU2hIN9DGyP9GM98hwp0YVSRPhar+JWUs91DsTHyLVVbwp7rdNIdr5Hxsz4bt+tBH
	 ITZ1XOQo0mRNGbWvY7J9t6YyefqWP0vtkhdhGYNQbiPRHHU4ABEsg9gUWKRjMq7KYQ
	 mPSrQZJ7FUWlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB555EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 10:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168820764881.15211.13312548051875481941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86e058c5678624184a6815844db52b832312c2c722599b811109560b53c8f28
Date: Sat, 01 Jul 2023 10:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688207648
