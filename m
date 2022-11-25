Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B086E28F5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7197EC433B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669371054;
	bh=BtYtdi3LIN9kG1l19Z89gK66Ws1d5K05GknM3LqMhp8=;
	h=To:Subject:From:Date:From;
	b=EWQN6yGKrGyTwXxv6+BrLdJ/KlTHUIx05SCaQuuXfr22OA9ubQiwcLpWe4zsIRyst
	 H4tRh6Y5E1Lr7oHMc7s5ck2WXl758DEIrAYRHo2OHaBkfJU7TxZRry4zRVCSz7/K5g
	 w7b9TW5rbzmaBOsGr6paZnImrjFUMg4NEY+fzXT7vy5GxZEnfeeE8xP1mD1lS3EdWg
	 j8uWR43wpNh07HzYv2FvdVQPFnK4Ghb5UTgXA+WuVQL/CNirPaxW7+hLoDpb9KOewg
	 qheRZoLdhguN8A2jowU0xdDP3Sj7kXowVJmczJpxJNHEmO5kkCrp6tMn9pHljxFrkM
	 BUIU2x4Y9O5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 566F0C4167B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166937105434.27365.2596520799536674517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d81604f3a6dcc31ab9825f69e95158f2204b00f3a8a774dd94215822710e74
Date: Fri, 25 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669371054
