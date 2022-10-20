Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB807E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8FDC433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666228853;
	bh=YdSkah6OYvqm8+Km9wzlP38kUz5GnGOYl8rS1I4BrkQ=;
	h=To:Subject:From:Date:From;
	b=mdYb8W3aqgXAuK0jl3YJHc/7Z0pVgiDUC79Lqbxx04p1pEBYwBTZ7sIeutDE/wBk6
	 mHHqdE5qQW/tfSWrIeYdcBbvdrXRntDkf4EgFsuiXTEn7W+aO8jO6q5Vz5xpv/K0pY
	 fXs33NGXd9RI+DIM4Rp/QRDtjkMVKxaOxD8sHyoih4C1N0LtphlTS9GPLeez7ir8oH
	 BR/Q0+pGBh+Zx2s2aEf9ve3Bjg7i3jEmavFcUSdFRQU+AiV0zhIT2nqljhhnqnpUFG
	 v46vrz5NJlcvp+p2nqyzhvjAlr/ylTRRCIoSAkqLwxC8GN60O6JZk/fEYQj1BKy8k6
	 lw/ay65yQURMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54EA8C43217
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622885334.10225.15438274999581222091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db461ef40ae21ab37716c19a36350d97cb3f77e1ad0bbc910e4d4ce096995d5
Date: Thu, 20 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666228853
