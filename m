Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54962589
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A872C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669296054;
	bh=D7XOzLCqpUol19Jj2QnVGgUFXel3soypdGSwNZYaKp4=;
	h=To:Subject:From:Date:From;
	b=H5L2Scq3Ib9/CEtLKrZ2Ic7QA+S72KJ+gqISO7An8gdCeQ24dGzmF0CGpxezMDn7w
	 x25JVq+RT/VVHk6h3u6YcNq5CrJ+yn7lJTZY1m7rXbpYLHW+s5p/yG1FmschF7lLsV
	 oMLiWx6YAVom0hG7X55MZVqspIXgPSz1wFDRcTRRgZG00tcTBYYM/KR1giGIWTMRtd
	 V7OqhnaGCLximBiTZK4xxv28XU6XAcXy+/you/awe1AL9UatYk98b9uz7Bqyn2IfbL
	 z/alk1O6JAIwHR8O3bo+OVtRZc4RrOmIzdVk63UodAER2VSgsf4wkK1OjbEBgQj6C3
	 K1QBqquZeaW+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53322C43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166929605433.17234.11168636395383633273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e9338ea1fff0f807ab99f323c4f5adad3a1ab48fabd97ea279b438fd7e5569
Date: Thu, 24 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669296054
