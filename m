Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C704CA23
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DF7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668239454;
	bh=74iwp4uptoiFbzRH+r1e5X9TnQDKQv3vREiE3so1iJM=;
	h=To:Subject:From:Date:From;
	b=CG86leAWcE5Cl4xTeGmOUqqV59zNap1Tbt7vT+n8EUo2MG4lwZgu9lwqnVKYFPRiB
	 IYVP0AxJMp8h+T99hheekazQM0dSnZgn+Zu5Oe0s7H79hXSqSvFLr0kkr1GYvAknA6
	 RHeJCRDqKCndNdkQKi5ly2Qkreg5Yc5nrG7gLm8abO7uIVwsbaghIdcRkfko/vbvcq
	 K9XE7qJEInVWLapujopH2+pc2PkA2+Pfh2j/vMEl2XPwTEfcTnFHYT5GUTnEkxYKX1
	 89PHfWGf/frEpM6vGdN72YfxOhpNgx0VlfFeMtkUDspESBB0oDtq0LcIDQXnB6BAqv
	 Lttrt8B6YH5dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F3FC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166823945434.8950.12630393361800882338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a12d9c22fa955601fbd152523c9c1fe9739a58d4a32a6c452f59913b2ce0fd2
Date: Sat, 12 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668239454
