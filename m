Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D2023A2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93CDFC433F2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671813087;
	bh=smqhyi5wE8JwDCgLOryf1UjhpsEKJ4r4+8Ap8+StMXQ=;
	h=To:Subject:From:Date:From;
	b=PQUedjYyCK5z5eTp6tUhQFUmdnrg4zz7T1vTw9hGUS1ojC6qKxFxtacwn/ZhTeRdW
	 6H666jFJwOpZ9Fg0+kCQwX6NV3La39GwzHGSy1ks6dBdzqwaJ9kS/qeor0Y9v93+4q
	 8c1Xdgu4a3ygGtQLCwL5W4Rgv98mplxuC5ANp8XtV/OeVW5mzV4eKnuMjopqtvO2sE
	 DXYwiQujhC0VWWnPRzaWrzBvAvB2CthoLKbMLM5uw/cdeP6hPZg8jiwbGoPDsmVZhq
	 xsDdLHBWWj1MEy/q+QqfICbj2lKqij80isqC0+KzMXxrdQ/KSNYLU/pGh2CRdcnbO8
	 k7QTb1A8aa3hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F974C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181308744.24308.1533873084525414224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a128ca7b2440ef5c57d3ccaec9895dc624873971837ee23c1b65fb70846e1c32
Date: Fri, 23 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671813087
