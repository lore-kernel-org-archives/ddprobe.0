Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4F562F
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHcQmXbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812CAC433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701045496;
	bh=0ITKNKjCz20/QlzTJwON53IEJ8dl6dvwcwVb9QHjii0=;
	h=To:Subject:From:Date:From;
	b=lHcQmXbpZha2FQlRGGWKS01VQ5N1u8GM+GmOml7InrLZr+B8viJ/qIu3WA33r2bto
	 HWdN+RtaJOhgDy4vCUY8Qh2whz8mdgQFCwwBVWN/e05QkeWUFXv/nrJn5N00LykYoO
	 WN3JsdZaPUlKQWCmTb+2DtmHeWoF9xQ032n22rsbhf9xKFKx3K4Oa17B2NlbB1VqUc
	 gHJ16Nhe4hGDfMJJGiNl0CUm389bSuhxJlMteeTSD3vtH/wQf9Ef3D9faAPr0GNv5I
	 AGn8gWp5r+AHUyStfH1OnVxGtkzNK4MggEs9fwwRDvEdGVr7Dlu8kW6JT28UCuPjN0
	 KQu2tgOWsFHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 634C7C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170104549638.10045.13390708624037688693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da23775dcf3b14356867a782aa647d70fa22c8c097f215bd1848b93928efecfc
Date: Mon, 27 Nov 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701045496
