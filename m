Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10A5EA4
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69930C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666691453;
	bh=sZ9Pc6R57GcNjJo8eFuESmkA4DepcUaYbj+Cw9ZYVTk=;
	h=To:Subject:From:Date:From;
	b=NqXnnXdQ2SNY0fnJQ/s1+E+Cbld/wDUQWV3YUqCft8d+X8E+x1jFQe73/5TLBK9ZW
	 lr5SM/yfhWVy58vs7FqcY1yEwdSK4hKQ4ev45NCH7Zn4NGfuPu4WeVRgTzJD9pVZ9q
	 aPVNRYO2IT+gkIINHt29L5vOj79PbAqb6uraaXhvcybHJiNDA25SwQ1sdocKXyKJiY
	 VsqEkyRm8MX4yCO3NPDSa6F0T/vntDCREiYU10jYGkKZCE2epfbwXw6LBsB4LRbzWn
	 wHujjA5b+w9QDrHkTV/dhrMGtBPHoh+f/qOovNfp3JyycY7zIoSpCZgNDWd3+TKAxq
	 CPtxHR6GZZBQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A03C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166669145332.12238.10097552652642746244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8022f4b4d3739ab8b8099f4666dc2f4a708941131006996ccc1360f1e171b2
Date: Tue, 25 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666691453
