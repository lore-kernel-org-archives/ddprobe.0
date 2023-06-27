Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5858A1396
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D835DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687845188;
	bh=qjcmU1szUuTvpdhXLYboJ3O2HRLUqilCm5cUBE18RxI=;
	h=To:Subject:From:Date:From;
	b=QWuD1pgMlQ7y5wwhC52dTIvwRxL0N1RnQ2zy/i4w/FVNwYjWJZVYuntcECsdSHusO
	 qVeynMWajddVWIk+pG7vW+wHU8xCmu5TdDK4u9n8dgdXA5VG4P/N1QoQ6jeK1bKX44
	 eDzFVYY0/lGSVOOPy2aenYgmE1GRRw5qpKewc0+ODme/hRmpx6KzLlD4LIuH8cRG/q
	 MNKLb8HFvEEzIriLX+rqdbrXlVVgEvkdKv4TaBZ10jdyQ++Mriea7uuYKcPs41GW7Y
	 b74kZKEUhI/aWWtP1hXqHMFf5SXAM+I5lBsSnEXRC8ZUIChqZm2/r4WjqO0PuiF1c8
	 spEl3wQXLtthg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11BAEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784518867.17841.12696345644023959019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5733acd3488e5462cd8b650d5980b5689286125bd563f132ee105b1b281251c
Date: Tue, 27 Jun 2023 05:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687845188
