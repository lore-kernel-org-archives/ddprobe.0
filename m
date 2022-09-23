Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B291729AB
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63AF1C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663924853;
	bh=3glY9NlcnrL7rnUt3psqsGsEHWS+RwJU1PJXayyCOdM=;
	h=To:Subject:From:Date:From;
	b=L5wJb9VdZ6zQfpKvNkX4JRvJrzHUMdNMvZWGjPrnnwyP8bOxoc0PbzgI0Ftj0hjQp
	 t+TrChuSxYWQHlPBmI67xmP3or/FdvwsDcPqOAni76xcCq5Ht4fZt2v8gm5d/9Hg8W
	 1eiDYIGzw0HA/2Po3yxyJ10p5tAWsoTocRb0cteyFllwlZ3Vh6ZPQMU0G42jTSm88D
	 m1hNDIZyNoFmv8Crolj3BA4I/YlTz13wT9l/ZEnTSV9ec3jqAjVp/Inkn+3ffGePJH
	 7V0xBoagQH6MkrbmfRYdW4kqeYPoS2VKTF+xYRrbyP9SAv5WOgbrwffv6aBBQTOKY7
	 oF3zt6u5HuBJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1C7C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166392485331.31187.1297167405928735630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b91893dbd0e9e2e297a8af345db4767e919e296b23383166916c75441f794d
Date: Fri, 23 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663924853
