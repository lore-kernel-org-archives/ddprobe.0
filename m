Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194193D0AC
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTKh9tCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76327C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703027296;
	bh=JWbilBlDy41lQM9Kd7CP9GN/DilgrC0W+w845Vr+35o=;
	h=To:Subject:From:Date:From;
	b=cTKh9tCyQy4cKTxzZtFlaBQIjbCXG3TmPZ5dpx1rCllIN9ua1g0d4XCWT4A45X9LW
	 zY/Ifik6HSscJBnamI7TbRkmvLPws4jzMFds77UL46WNQ6haSAyI3T+WcWWp3Rx5QG
	 uuTtLbPea8HQWWwNyzWGAyAc42MM5VpvPUBagppTbIgjgYDrH0qSuI/jw5EhYXkFgp
	 90mZvfAtYc+LNnCZlSthBjQzTr5yoVcrT8JQpYK+FGBDN2w4zui9sgWlLf7vqwRM0H
	 24Ggd1Sqk1YskBML0X/m1+JZ8qT1USJpGlWxjD5KAczqzRmcDKoL42MWYjP0Asd8iG
	 PoMDDs4Gm1eiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC5EC41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170302729636.27710.8367716352714893646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bc75adf81904d77a747b36d39fe9a3292910c8096a90720fe9d130b226bbcf
Date: Tue, 19 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703027296
