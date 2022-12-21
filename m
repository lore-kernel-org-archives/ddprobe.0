Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8EF37E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A124C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671600087;
	bh=YkLzsw6RCp1hko2LQHdotAMfZmiE2hSRXk79YojGemM=;
	h=To:Subject:From:Date:From;
	b=pjl7d2zFfNAcnqOs827k/eWtx5bYw4s78QUoDQbPkLTBGlKSYI2UY0lovgo5y60Hg
	 XkaRPI+Mwi5RITS+zU2eHZEDVkaI2C8gY+4TM/cpVsvkJsX6qaIc4r9fWI189WOSaO
	 TBffG87hwEip2WP6k9pHO4MGzuYluIUMw0Z65gKlz5I4Cvcb2yuhgoDd0mXhMk3wu8
	 0ieZ48bKK75UVP4L1D29fxyrjax9CuASZ9xRB7edxCDCPjbyGTOC9K0LkQeNPZmqZY
	 zNLjPGGiG9NUln+5lYCehOiHTyVs1jTGgXNlznD6/gufg9w7HaWcoTfVucJp8U82Ge
	 6OVe66fKOY0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A544C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160008741.16382.15853067775630451622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ab70dceeff942e02361a4481d6f262a2bb6d9bab9a2cb8dc4533daafb404d1
Date: Wed, 21 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671600087
