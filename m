Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2162B219EA
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s33Zzare"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F2ECC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703071696;
	bh=+jQq9xhl3oIwQgbnSNPHCatVBquj1TIJpnRJXGoIsnk=;
	h=To:Subject:From:Date:From;
	b=s33Zzaret3KJgrF+j4ryoT4lJZRGwixHmVk5UPjGclFybBuGXWBHCCu/Uh1nVZIGp
	 Y4IYN4bfnboO7mfPk8g9bLGvyl2CqYcupM1IrzMVhLdk8CGP+w1oXxWM5y6Y3U8mPh
	 rfCKPOGYVkPA0cVjgYxHdlredElsxcH9JYmGmOCujaOWx91yeZtMHlTY0CTPBaz9kE
	 cGxey4uWGV7haIvbCTrdRu9rH2T+57L9O92vBRUq6xh9Gt1QP77OYB1z+Kk/h+jKHl
	 rUPELodp7lIggYCGTdE0xKxHsrldbT82whqOY+iuD2pRb4vu3ZsfAt5KP6HeGNazJV
	 D5T3U9D/dS1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D03C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170307169638.30377.2012585351029918840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a067898941078380c232813e01ea191d0eb11c8d71e459f751f83c2987dada7a
Date: Wed, 20 Dec 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703071696
