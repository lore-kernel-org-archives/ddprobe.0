Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F117B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719F2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664333453;
	bh=0zjlNSPGv6uDYmkZEw6BOpB4Mbkc3BHMdeVojWi7drQ=;
	h=To:Subject:From:Date:From;
	b=UAkSSjGkx+e4n4UCCJfwX4WPpA508GI3VfguwOptLzcN+3VrMT9NRmeDd6NwzZyGK
	 lZ2QUXGUdwaGhxG3yxrpYHFKlFKli6zamF9akP0sZpPwY6ojUASzSu37fbnxYF9wWN
	 kPku/JbJQy6YouCwkYhmbNLifNEaDraQ2cqa4YMq4gsZ8b6BjrrZuqa7GHgVRccGKN
	 nZggw9JNcCGpGP8NoCZEKSYSuCSau0hT8lgum8hx7Q/1zEqHn7bG2okQaUEBvnqM+2
	 TdjphIFpTzjXx2oFQ/5Fz975ZkSSmY2JrLqNZGMzlmVdRH1yrHnsdXVFbXdE+5JZls
	 aHt6BoXsq9REA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559CFC07E9D
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166433345333.10385.6449619102408633563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7d3527f875b5651028cf71396e94dcbb670892f6ad701a99a03da65ab73997
Date: Wed, 28 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664333453
