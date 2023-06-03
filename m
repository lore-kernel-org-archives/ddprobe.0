Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A802B8BE8
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 16:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08B1FC433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 16:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685809086;
	bh=z/l8bZpX6z5RnLe3bDCf4+rvrOrEiEFKbnAvp0pW+7M=;
	h=To:Subject:From:Date:From;
	b=UadzmdhBdlPSUm04e9/95BRyLqMnc8vrHN1UTPSu3qgdDCbd5czLiYZ9MvVvUllrO
	 PjbrmYC6xJ98ykn0VfFQVxA9hYVtz6OEttdXeKmRF4ZEEBXHH/HIT7rkUDqTqBMfSl
	 gtJZMdsivApSGkLAwnCFt4q8XEB+oy3JxiSnSbAnLZCPfabsoViphQozOue5wHlUb8
	 wBamwX2dnkeR+lucz2VoBMW24CN56Vo8hLJ3siJoIXTAdvJmtcEudUvK8Z5UyqFKZb
	 gWzB1EIQMLBzHBFDmqdsSNArmddtk6k8oUwArDmtp3iHIt9eci/T/urTNAJz+9XoRy
	 ckiErd8pflT/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E06C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 16:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168580908582.16021.9468443930741628350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1ece952b01fab5489e9f8a1ef6ab7bdab0db74531d3b61d10a48177b1969bf
Date: Sat, 03 Jun 2023 16:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685809085
