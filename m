Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B723FC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B830C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671400887;
	bh=vrszwkoeQOY75n3971dkOFInxQC5uouP54nJRAmwz8Q=;
	h=To:Subject:From:Date:From;
	b=Y/+EKUZ9FEWA8y30E0V/FxtQBAZuL6HieXVFwuIBFYMtYjlQixv4ndUwphWBOz/+0
	 Osh2HeloRdKO2UhaCz7Zv0VUvYLc5ydkUv8oODuLBdNzPptg4/+0i4s1W1Om/2Lc6/
	 300GQ4rP3Ox0bBs64qOwH53vxtRBe0MYANMF79g9Y2beQHE3V/853a4uJW7yXc8tAo
	 LBonI3KTno2IzCr9o1mjsjXPDFgFdE2fvhVV5EI3ICLrftKeTVEywQbbtgC6YCLbZJ
	 d/0RwbpVHIL1cTdf/gBlQ7IvPwf6mhki9VV6//VB6PikUjZ7rrmU5hFr3csT/vjo5C
	 9Zn3kEPGNnB/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 750E3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140088746.18377.14068349179826817211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c7bd4d8d20217480eff409b54c8b1b0ba4d2b3be366d442b8b8506ed6d1d5f
Date: Sun, 18 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671400887
