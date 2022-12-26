Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE532917
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8328CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672075287;
	bh=7rLRFyq/ctDwPhWAQRBmE9GGydS5RopmfSjQmzH12Ug=;
	h=To:Subject:From:Date:From;
	b=Tscf8Zv7dFY20P7FpX95gC2iGt60/P41MTlFQXs88UcpKQb0TneAd0kQXCwlvcksE
	 F2/i+eJHL6vgBVOwjUKZkXvgeVRB0ktXlMRgi+ODwzElVRqqLqTQfrG0SjIbTCV5Bf
	 7FRrzveHWz/ilp4H766AlUwTvhjmMvwgcqcCx+sqKRQnrJlwiSDoHpVu1MRDKfhu/u
	 BlojGbgn4EYu2SniPDwY0pxiFr6nj1YYQKcZovgoDXYDFNv5hEulP6WilDgRTMW3gg
	 OZmjLyREJ1EXV4iPLK62uemxKYeMpA+jKQUG/qnEG89oJdvqj5V6pimxyZwkycwJHI
	 D6s9MJ51ib3dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A697C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167207528738.5512.11788908913270379350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2367907d5ac8c1c918f198f96d1403b7927c8ef8e36fe0fd4e2fc53a8b3b0a8e
Date: Mon, 26 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672075287
