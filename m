Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7AB67C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778C8C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663597853;
	bh=V2UvOH1xiyHvwLN9K1uLhQMNqAjQT1Nz4lXn7j3DCJw=;
	h=To:Subject:From:Date:From;
	b=Z3ww854p3ybXO8fDkdKtmAOxyYZxzcpAnvtTAe7pVlSVac7EmjLlOkvLw37O4vvaU
	 YYYmLmxPhdepomurQw66KBTBqRDjjJ5BgacJO1JPXTm0Hj5g9/fwd4cWUKovzDdx9A
	 lyqGJez+KtUSwZtJ87I7ZcKaecweRX8Bbpox8LMAGnSna6R3xFjSEi2mlm0u29Eszn
	 PKjZhOZIZ+wnhQSXnaSn0Ak1PBcU2zLJW+bWhDHVNbKLzWXlIG1SNacosSuJTkAwE8
	 +erxrhweb8q/9cKFxqgpZ1f7EDqQLsdxZuFgyccbeFgFDfhoyxTrr69af12PAL8Pk2
	 gs16dfHOIFrIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D71DC54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166359785337.5789.8415451707913505542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90d41fbab25f4fbdbf034150e102043a29e5813b1082a1a44f93a8d7bd430fe
Date: Mon, 19 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663597853
