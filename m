Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492427F4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 01:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDEDBC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 01:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676078046;
	bh=+RiQ/tr9H63MQRQdKFtrrhkbVkcm0nFwO3zdZGotywQ=;
	h=To:Subject:From:Date:From;
	b=YFesa7VC8YbWmQbm11AkUkvcPBjAdyknBoikrFwC4KojgfUJ4znCR119RMtLJgt9a
	 1OQSTstQ3znh6mVrRB96ItSyknTa+HCZRd/xTFm8Bg6RHIhrUirlEO5AhqPxoYbBun
	 W5KLQBS7NyIBIoaqnNA2Eo/E73SKNz+rY9FMrnK+K1w2KZg4Q4xd4rkn4MTFR9a/oR
	 u+i9GkUZdClfNEZZ8sXWQlGTApCTuGAQNSejnjv47g4LWAn07s6IoqFfzKkzaxECiQ
	 OtmONJie1bI0BeLSTrsV9p7gwSE40+eL3r03pTQnGZt7BPObQ3Ui56DyC79yHy8AbQ
	 cKpxpVlDjoPFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E3EC05027
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 01:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167607804580.16422.10583755985880191565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e7523669411f7de31170904f4f0dc755a699972b071bc611d9d4e4fb94b331
Date: Sat, 11 Feb 2023 01:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676078045
