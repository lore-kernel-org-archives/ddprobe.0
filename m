Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600C4EA9
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 03:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F96C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 03:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694057048;
	bh=k7ZKkh0tzfjts1N7olhtMwENIWReSrAxVzeLOV15uDQ=;
	h=To:Subject:From:Date:From;
	b=mWNHlCwqQ9/wTKxJTSVPpDaZk670B450V1t2y1JFh2CLAHZ1g/nydRQgudmoJKiFt
	 fOXqDR0eQVD6mA6JADNwXK+WEbv1HGSuG3ogXMk8XNLxH+zFz+tIfFZEuh5gtywjZn
	 8WPEefgAai0BrcGRAIiyWWtYamy4M9mjIsuSfLZZ3ziFwfEcx6TiAUOdb0XFIVq9GF
	 eOaaFd7BnZOvLyWA1ylC8Qcu6+UdGX5fJRdo9GTUgb3Xg6ds8vQ2qsjuWrzedh53Dl
	 maGskIIIomVJSGaHQYDqDWW9/MZs+BMJ15Sn9JbB6R+Sl/zQeM0DrhauKKvHtX8lAM
	 RcRIwf1m/wL1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4461EE14A9
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 03:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169405704866.32313.4402893030010201807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621709be08fd22aa8aa10d0ad6166ff0d3b83041fade0db9a5fbcd6188ae88fe
Date: Thu, 07 Sep 2023 03:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694057048
