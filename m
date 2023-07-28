Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE3C525C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 22:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD133C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 22:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690583528;
	bh=ujfNYVOmoaEk9Qi1UXizePDwLrNN2g2H2GtSjqJibfQ=;
	h=To:Subject:From:Date:From;
	b=ofwCRjiHU/mPrjkphlPS2glArOWaVtBE12NgzN+x0V7+zGOi9JTfwf2409Y3NMETo
	 cyX3NWpA7qXVnSwDvNXS+C8TBcorO1UNhty2ZNjzaZHPMnTZpjW/cVFEVVhbOFbAO4
	 Ovb6HAW1zSk7bhY01gp69GEqYikeXoAYDmFvwcLgz9BEmd0dILjCU9L/LUQ7RExiX5
	 ESWEIjIG1iJvy9J/0HAfS5SF0qfApuM4TYfUSKRW05Rks9m7kJBOLZUgsYMpZOeXaz
	 p3gh2CsjbRGSbHsMYJv6wuSrI2A2mSN3NbS3b0eEL+QZMVgG6ko4vERfqUD3vuSS6d
	 u1C+AP6LOEw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C6DEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 22:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169058352866.30593.440349819188214279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 925a19e4a4572c2f74fe02e1916ea06e6cd2635522b470de653ee763886ae05e
Date: Fri, 28 Jul 2023 22:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690583528
