Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C3628E3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A11DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688946429;
	bh=PfM/SAzq4lv/qVJ0kN/Q6WnFlLFIRflEGcTrKwMMKXQ=;
	h=To:Subject:From:Date:From;
	b=q7/nl5qkUuaQhQBbnflpAbUM6rsdFQ/H0Pj+z733bU93zY7nVVmBWsHD69lDuOPDn
	 p5P+BGdrmEjm7DTKo/20qmZZ+k1C4ZObO+Bx89qpv3oDE1BmiHCPXxXYEOd5QS0RLv
	 9wKXtc0JNpS7DtVTAjdLXq/Mo6YSC1zzTBGLtrCNqzVRgJTE7rS+i10L2Nk+Hcmghg
	 g/mT/epssYmUPqU0qJ6g6WKn4yaD2oozecfdGQMzW4SEMYH6Bpd5PYzJbtYqPsHmGA
	 +NPj6bbqQDpsdegZ/e7cvLHjaPEz7qbnNICCHIPE2ggfrCzoWZ5ShyGP+pxJsf4s8L
	 hP+Fm9PegpAwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D83AEEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894642887.11160.7503789887098787633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93b02cdae8d3f12c4b42e8b025d20c1a3de1b01ce7e0331fe1f6dd43f16bf0f
Date: Sun, 09 Jul 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688946428
