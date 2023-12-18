Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081801A282
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1/BdT6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7476BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702897696;
	bh=dO2eBJp7bx4KIeXN8HaBACCxVXgLOaL9ITMlpaIxddA=;
	h=To:Subject:From:Date:From;
	b=K1/BdT6jyQl6pt1OJkrXt95s4DBOY6zZlbjokyszYJ5P7sAbVB0U7AE+g5VDirUVT
	 L8HNXKMOPxzB8ObW6hDVLALeMDIh6o9JAu7Djh3OTyFUP4otwNzxJhjN7dIgjd8mnm
	 oiNtYlSualTCgvdt5M1duTc9lA1Slzmu/pb440wcV2LYXs/A5ddbi0g9R1OxHhh4Ia
	 QRzXICcQeWrzIeunf3/PBLrqrfKQBhI51KjUGxGGihsOAB+Cj9VWMewp3VKZinvUR6
	 VjD6iYxARr9rS6Ub7vhSD2T+67YQX6ZvZpybY3+aAMOjGGilgmnQjJAFltVlHNuCPq
	 54OUsN0hD9/Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B9AFC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170289769636.28814.18124108581467020032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754aab7b5e3fad571de8b8908da49ae7ed82fcf79ebb8d81b3852cdbbb344a08
Date: Mon, 18 Dec 2023 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702897696
