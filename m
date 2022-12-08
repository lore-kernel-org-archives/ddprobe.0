Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD336629
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E45C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670477454;
	bh=BSLdzE/KDkAWWC8rtEMLK61+wEkznPNlWRvMv6ZFDiM=;
	h=To:Subject:From:Date:From;
	b=M9HP6cVP80g6ueY1d9YQjHFwBgpoFCP6xHx6RxdIWjbWtvbuFusslig9UPmg5DtID
	 VOqTjfHCPBvlyPrwk7ANFE9UtkE+kQ92IVDefuy2pVDEfFC5OTCF8Z0nx6Q8mOBlsK
	 +zVZLw+jb5TpI77WQUwbcAfu7LPZxOskSxbQwCSB67atQjlKdfjIz3/J/ZSOC2veSs
	 /msYysD0pW0yxO69xO0jG2uSaImu9iuDKvqoJBptLEsEXPITfH6wI/413WFGX4kpt4
	 dn3wayPLhEFKgzp/fA47HIwRAY5Osvmp2BfBeuJnMy2walxzeESteE0V+pW0H6uy4l
	 aFWyFgbea9f0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3EFC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167047745431.14872.16716613240760131943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068490ab501ac979e1e8ccb16671a9e2a54814d39845f16d1734f32daf686625
Date: Thu, 08 Dec 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670477454
