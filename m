Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0493207
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC13C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671222687;
	bh=lPVU4OCKFepKNXmXwUmbkmnmaMN5nHewJtTQ/sWo5sI=;
	h=To:Subject:From:Date:From;
	b=R8PWk3Y43/N/wsf5S08k2cXMq+KVdZJ+OsQo2t7u3pDVMVEuAxceceyzVRh4/ikkj
	 uRxla3SHDqbA1WQ+VKglOGTStRHQP4UW2vd9V51ZAZUbRjPx1uYZ0qePOrRJoe+AQ2
	 T+LoXJj94X+QBIuHJh8jHzfU0H6bTyiPMn7D2AQ7ORAMTb97j3geHwICHU1oGO7ZDl
	 pJE4l3k9cJY8tY/kieKnVuT8yCZOpdB1M3lVbh1u0T/wjBZtdXlIW8dAYEpOUKAdZl
	 l9eEHSNmvRWIzvKx4xj3Lr8pK30NDdo5835jX3sX0Lz0loDf0WTXhUrTQsl+q1cPNO
	 jUq0wmxnP2N3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72CB2C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122268745.15162.13403442273331425569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38abd2516bfd1ae64463d27a974457ceb9e38094a7feeef9636b838567b5eeb0
Date: Fri, 16 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671222687
