Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C658A57
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 14:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF557C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 14:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679928185;
	bh=5Qe0+45k0VjzmawN+VNfQuu/y7hNDb3sBBwJ3lEA8oc=;
	h=To:Subject:From:Date:From;
	b=DIosC5ul+vOX3YhRNxPvTPX8xFF/rV3EARhcoNnY18ji7qyX3HXQzN+JtFqvnXG8O
	 02uYTUW3QDPpjNreH/cfY2/jmd/iC22ncQpZJSsynf8IEkQ2zHqg2SocTy0SLq5xg9
	 sMhrPSMv9OzPliuqK4s7Zb++QfWxxiKoxKBksOsjp2XsyjNb1afMl76J43tdwl37jH
	 M7I+hehDUAQDNDxRLxzy06QKuyiTfw7FzZTieoGACyFWIX1grynW4TW3HtfX3CeuHt
	 44OywZw80uwWfy1b1ltl9Z+ZV0hm42p08sBkqAHRDlfuDrcsFGVYkjbl9/LFBER2LL
	 MSM8HvGjLbmkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AC1C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 14:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167992818580.23219.5565034640546018351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3960ad7728546c2b00c48d88b4275fe71970c0523553727c803e023c086664fe
Date: Mon, 27 Mar 2023 14:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679928185
