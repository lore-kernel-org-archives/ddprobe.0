Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D60D64E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 05:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29A08C433A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 05:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681363626;
	bh=0kx9HNTSbIm6lZU1wBx6FuzV1pKL3srKD23lHRP4WjU=;
	h=To:Subject:From:Date:From;
	b=rrs6tldFeQXUbRf8jZlOI0f2E/5y7JFCUG5sEcSR6PFgDaXMsk//aMNgaqmiugKCj
	 DeKxsWMLieO192viVakydxxtJtWIFazJttxoyk5SkiQuFRK6ZzOiwReyKTnOl6iTgC
	 4GOu1KsQM3MSqL1WI51718cIMyJCGafr7egLrFds9qq1IO48Qd1IJ9uBO1sb/cGirC
	 NaLtFWKKQMcqNaFjt/oNB5c5YCcg6jBMj5xm7KkLWn4SsgZ58zjsLvHhUoiULEvziZ
	 feD+ebtoDTgO5NoJ6vHZITO102dUOoF3Yfsfh0OTmzC+62L08RlJMf3Agii2GcWn9Y
	 rLQVPh3nYEz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA946C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 05:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168136362587.22019.3409613545557068370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9edffc80ebdca4234d9b7206ccf83bc7e66f4b96425fed20e879dc4e4b3eb00
Date: Thu, 13 Apr 2023 05:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681363625
