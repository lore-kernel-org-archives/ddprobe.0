Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A3C28F3
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63ACEC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666426853;
	bh=FQEs/v19Sw2FdIGJDcgXhLdjpnGn5wGIy/1ZeyBzgrE=;
	h=To:Subject:From:Date:From;
	b=rVIUQg5dISpp/DKhHdsUt9sMJowOfr+K86M1Lj8oPdxqPCLD4xf0Odr+tf6Ei6TsM
	 bzXKY8+PGsZil8/quWIHE8JE36jOmdnKktXQEGX/OI0znX2yaTyMoaIZSoIZmqjpYP
	 oOWzuX3551PJ+k/tQyRs92igvRwtxdyTadhBeEPklA9kT1xfhItB9Yx5CXwTrIVBao
	 D7g01G5Q9uO21eCxnSRQhcV1p58WuWKfcVGBepbDW3Dr6oDzpVaJteTSnZVCzO5lGU
	 X67d6hfs8jGJ2YKU/j2zyE0zjNsWAoqtf5zqDF7DREtLyc0AyGMYhcfbtkp5+WEJOo
	 +KFmp0C8fsaDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF09C3A59D
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642685331.29846.2504618074415305877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dba171d7281bf79ba2cb72643c470732e09f725da41d8081073adf86ea04557
Date: Sat, 22 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666426853
