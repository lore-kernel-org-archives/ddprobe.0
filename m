Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5EE67F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8550CC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672618287;
	bh=WlWtTie+3jtw3olZZWaLxL72AfNW2N/vLv72bavfhTg=;
	h=To:Subject:From:Date:From;
	b=msPLE0TXrRnjQXZYYtSo0BnGCshFpghQjM+hV6wm8H+bPIrW2Q/GXdPO1x8qeWsWq
	 Q+u6MJg3Z/jOmYTH6kCoVbUMrNOjYzW7EnFMi5Etendt/j2RgkGX9nyj+fMVK7ThV9
	 mRtea3nAo/0uWEoP3tdPQFyb5RLLXQYWUyHduehYAU0klSYhZGZwrjjnRFjbj0M4vc
	 SIOLgytZrANwLt7CrWmH9Weh8tDDK6uAoboNyoZbc1yJHmaclyWZAKufUebIMbckPg
	 zOUXt6ZVEyI50fj3vSfpFoeBkYPer0V8rlLe9TEBbnqC6gQRgCvR76LZwM4p1khfdU
	 c4QXkL1UwRi/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B82C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261828738.30486.6569824865214688058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcfcdf8abb60df9656d88e5668ac754b062fb797542100c195455e2f2191cdb
Date: Mon, 02 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672618287
