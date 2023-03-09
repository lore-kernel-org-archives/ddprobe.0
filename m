Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F921C26E
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 23:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B260C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 23:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678403586;
	bh=EkYYLRB+gKo3uEcWBr8retcdnuN/S0u9p+tJ0LB2TH4=;
	h=To:Subject:From:Date:From;
	b=BXDVhqvGTsCtnIiWIBwKP+HlXUH8WWc7hDS+1uNioMwP2TWBz72/MDqWq+KsUCUgZ
	 k7w5b/wlG63+S1c605geAelBcQEOe589XiG/uUtLf1aownA6/WwLsq/bfsZ7QNCCiy
	 7FnIypuH31EniqpiEmjqgUxrE5Coe2LVKa1/hdVgo27xl0aJ2qnKPPjVsiWmvPcXKd
	 BCSR1PtB1EWYX/X60GcfeVst6a/03kUswbUl8F5OISjJ7c23KWY2PlMLL/2isVuC66
	 ByD1Qzl8WtHYXyn4CgROn541oRcreMOWOkx2JZ3jvPTTc/qgN6J/MT3UL3Sv+gygim
	 LebKqHrZEN8EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10ED0C64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 23:13:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167840358605.29021.7000528609877663260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295b4bc862fa622a5131706947ba547c69c3c22742267d64e0dddaa1a4c5c995
Date: Thu, 09 Mar 2023 23:13:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678403586
