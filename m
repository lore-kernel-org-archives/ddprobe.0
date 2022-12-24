Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E491217F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97B79C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671858687;
	bh=UaTrdRnEsOxwWXL1MgCbacmMbAq9dOzXy5exi+k8M5g=;
	h=To:Subject:From:Date:From;
	b=Auwr4baUqv1cx7aqj+JGq74TBS8dxR2p22ZKA4fGcMReuwD7juWJjgCmZENqvTIJt
	 dhQZKTyGohvXzdsscrEyb9jV5evgApXLEnN6WAFakhLX5/cnjBPuxPEWPNaMPJReRe
	 sMVO3Ki9WSVohG5VO4lzezer7c0NDpo7xfsOOP/T0Yax68FXXBDBUY95qVVYKzyy5Z
	 9Npb0XzT1Lxqqd2LTHeFPbl7vU9IqVHKhd1ROJY0aS36liQIyomgX7nCvGgkPoeFkj
	 r0zuhCQYdsbixNkG+Rts8xW56bhUG+QjW2IiRtOf5JtRMJmPm8g14Tp7d13f4XMNgx
	 1y4oI/Rp42pBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72AA0C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185868743.25925.6781876464491562877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b432bfc3f0380fce1680fcbb9e88e7c969775548dfc70d42e1cc0ee32ed7b98
Date: Sat, 24 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671858687
