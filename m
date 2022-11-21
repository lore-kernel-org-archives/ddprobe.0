Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA91813
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC94C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669008054;
	bh=bkl7WB5IAvM7VRrT9zHo+I9kqYp1IBXVRzKt66xE9bg=;
	h=To:Subject:From:Date:From;
	b=YAhuvdAum91SVYqlFgDj7JflO8C87qH2z/k+kBySCBrrk044vlSun7FwvDm/3guCw
	 hylKvo9vqWuuL4xfUq7mSoNOxBRJ7HSmSWYm+Hv+L2trt6IiwI82P+mu7kvQKLPBZO
	 wzkdiwwRWjTH4ws4trtUgakfdf08qU7Dk9DraXG128NBhiQ/a69mOeZJFHoTlKJid1
	 xkDJkiBuJYUtwe4YOszInu/DxPuOT864AAtgKfxhmOJ3I+GudnGepyJqHZfwg4lho0
	 8OLbhBDrL060kL/rLFOc82lqHR9caQyoN3yrhMzXveZ6FhVojlQ+c/9W3ceFKJ1bIK
	 yKr36Xog6jX1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567DEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166900805434.9954.9618918436378635117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a403a411693eb0c718783e35a0261b4339cdec96274635f5450ee3354ae9fb
Date: Mon, 21 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669008054
