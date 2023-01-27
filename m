Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211B710F2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 08:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF328C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 08:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674809585;
	bh=inVIs8bmD8jEoiHr6z+jBj7Mtx9JexSpexDqWBx8wK0=;
	h=To:Subject:From:Date:From;
	b=NMrMgx/LkLfbjNzamgUg9gn0N+nNWJDpFo7CggAHmmA7sXTxkiLooMs0hEt5UpXsD
	 pYk3smKbvloFXYgXCb7XQp/1xDJOPxh+w+CzFExi1S1y0ZwI/vbdJcgspdW4z1WkeP
	 46h5YokY6D9w90/JdKcEl8DBe9YQMIEXPA3ZLbLrqnaTZjAr4vvnkyDLOhvGV3g2h0
	 YQphyzYkeWQMzoAEfAQkGMNqTMbpyMuIM1Sku5UPvvG7CYDCK6vvYLwf1WGOxuTjAB
	 AV2FhZ9LqDo4K4Ts90Ze7KajoFKHvQL2V++WsFpSUfslp+u9PNzVwX8mfMIa+HjxpF
	 O6KwCz5mzKxug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6519C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 08:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167480958573.5556.3085962445591407656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d6e36f4e849a549255a6a40d85d250a67bd8bc9288f0185d10c6ab17189b38
Date: Fri, 27 Jan 2023 08:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674809585
