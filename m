Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4349C2F25
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 09:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C61C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 09:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678872605;
	bh=vLftLOCZo0pTWHRcH0PrgC9vN3Hbf+P0+hWll9UVgxQ=;
	h=To:Subject:From:Date:From;
	b=ZRaEU3P4GiAAFOERTpHjoC9Yj+Hpku2YRIRdG1NjDFDGBsfZd8dDDeT60CRRiTTkx
	 G3VonN/MhrP1r70i69UlFimbXYUGzTE/SbXgcTy2eDoqwfcTcuaASKFNowToSaI9zJ
	 dKjGMcX+boLBjO54KLffte5wcvO8yZtg9Q712g+VS8rnFZl2QOTIZt9MRJYoP8LLrF
	 orA+PSV2C6pgehgBTZSYYh+A+DKxJZQq9Z3OKDFAiHFGztRVDgTHQkgexM5m9ACs6N
	 n6HPv0e2DPVr+d7R1SoBhoTYbOg5WM43n0EZeO9wIouG/WOqAP43ODDS1u04aEknuC
	 7+nh1JLq1CYlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F41C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 09:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167887260578.27014.3547069606219545941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e5f662ca7586c9878e315b76fddc3404afbc949eb69a389874d24f043831777
Date: Wed, 15 Mar 2023 09:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678872605
