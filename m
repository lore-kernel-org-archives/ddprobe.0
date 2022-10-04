Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070F97B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96CFBC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664856653;
	bh=xYmifMycFfjzV1EMxJS/WqG7CnrtDgtubzTnkC+22yY=;
	h=To:Subject:From:Date:From;
	b=uLryo+RLaOEXD6SnM6lOqNzquHc/KMZqQHGGyKMCT7NopCsbBKKiq469bm1fWggoE
	 D8JJ8c8gzQJylIHXd7kVAdi7+kOmljGpYxQa6m9rWFu9jNMXu+UqdR2RWSs3+HrtRX
	 aVbuymTXnwtnYkk2sKFLBBBqTdTHGo2aqkGONmIQpak9vd0Qk4UrgnvbrRSpg9risx
	 jdUoL2XoWmYoCHkJO3I+kzmH+/h8yWmJ2nM4UwYQoBgAE2lmGY02letnWLbCScGQti
	 rpamff3QYyPgZXq3S0H1d1X/rfWPbpO5pARqg75dSJZDN1eSqkNo9fEP3sjTf6OeI0
	 4XBAhb4SfD18g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A332C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166485665346.16948.11288660952669929460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a004d934d1e42fe9693f697bad0d3fb694a1a79479a6410d44250eb50d19d9f
Date: Tue, 04 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664856653
