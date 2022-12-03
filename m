Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B467B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B5ADC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670076054;
	bh=kyx2kwCtOrIZeU0/jiru733Be0uFLL6vj2x6RSkmqFg=;
	h=To:Subject:From:Date:From;
	b=azBMTYPKYLW8POXe17j4Bg6sF/5svBRrfCLta6QmgqqgB9UbmXY45jb1xLNlPiQDW
	 LAOmSYpP8xTiC2LmRPsfkw2U4/ZsVwxwKHAMFj0G3Dy6k3bc+fHaA+VOkfTc83kwJC
	 VuZYZSQbqXvfGaJkK+ty6/T1qcNLraXZfNiGba1Q0i74d7CRBYUIU9e4GySU/IOO/o
	 V6MyLJL5b6vrTt9aZitvSVGd2O6afYSXp+h6kOwW8Aa+fV5JjaeuxHkoTRmAjGyB6f
	 o236IhuW/fs+ZbfZhIF+X+gSO69jdbbBqcfk61Ah5rIS7yj0Dn4Wo5eDcNmy81Wanq
	 DGsdah4jkJGnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C92C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167007605433.27203.18139206312659917391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8031c6af2987c650b55e1f6e1e8cb2e2b2913ba84c314ca763f28cf36acb3d5f
Date: Sat, 03 Dec 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670076054
