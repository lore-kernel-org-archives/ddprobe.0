Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11027D97
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1B0C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662204053;
	bh=DODtYlsoSIr+GVI+zYaaooPqu+gJfvE226sGN6kT6ts=;
	h=To:Subject:From:Date:From;
	b=qwJgCxiAm/2lN00fbP9+PLf/ReSgDCo7rkhObh2M4Kkh9Z0jQ8LS+bNBjicrjIA8q
	 DL286B1Rs7Z7U+LkHIurxR8SydnfpODZ3V3fW12U0t6Mj7QyUzw8jrlchFlbyY9f0k
	 XA078OTYVXr6lV+Bbi34Rdn0SkzCkcsaU/82vl/yQISlSCXbmM1dm8EVSICrisVOga
	 M0d6/uqnQU0w9SUMvkHvkyvgRDhXBX8NO/yTpaaaOvnPYpFQes7ENR+/MwsTGCNDw1
	 mz/I+EojlZZ0tjWv3fJWpRCaUV4FyuuRk+B8vu+ap7Z7nunr5VZ6aCVJWYDIMvdy2T
	 ERH1fB/PxBAkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5614AECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166220405334.29187.3474049602601496485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4edcad32d4bf525d8b93ffc4ad5ca266bc5fff159c3387c885a3c41e5134adb
Date: Sat, 03 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662204053
