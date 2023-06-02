Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F1510E3
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 02:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4D6C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 02:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685671565;
	bh=UysmXvxqS93H3ZOulmlOtVhvrn/0nFSIh2pkL8jvKMg=;
	h=To:Subject:From:Date:From;
	b=UJsKR5KAgs1NurtM/Ih6ViO5s1R6dRzXXfGsVjca4B9c4jxpKiZ+aUj16cbKB16+D
	 4vjSYEfDSo4W/qL9csrdqFX+Trefucv5XThpHmTGrzYSKG57t4pACf3QI6dpU0biyV
	 rrjA2/TX4rgQNtwZ1TJ5TVaYguUP448X5JcRABDHGJCBu048m+7PA1o7PLY18W0Rgj
	 MaBtpwK6fLn8oi2OoGzVcRST5LunOpro21roRVWOgx5LuFPzpuYsmg+lM5gNmf7acJ
	 6kYAx9zdPYHfNO7aXUfjVz6oCjdMXp62AKtJ6HGo4EJHitec0Mo7eovBf7TgjpkSO6
	 XcsHNDgYAyNeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB35DC7EE23
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 02:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168567156575.10291.3761658097744326025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d81d0295c099dfcb0cc410af18ed8e7c476264df422b463d78d1ed615ea7388
Date: Fri, 02 Jun 2023 02:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685671565
