Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56BA1108
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96FF1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670727687;
	bh=QOH7RZKvifzhuvsx2Ib9T0Zi6RTBbfhW7EOdPdMUSXo=;
	h=To:Subject:From:Date:From;
	b=ghsSPcoCZKnf1dHqWy6SjHOv4PMrdEukX5nI1pCxw+cChx66Cgq3WiEob/lHIk+c0
	 7vcc23oNkBdolXIHezHy+YRDWcxlxW50XFtOfS8UBRN8xp31L0leUq0ODHQBZfwEYl
	 lCHf7xtvdL0/NV6hHbsGMr7lyWeNTTxe6Mo9gyW9lt1hRgN7+ryTHEuDdqC09EEG5u
	 GJfVJPm+GMYCrYg7CPfGNngEDCmEQJ084g4sH+gx4DOtkGJiSdFtf7/dZwXQjpCklL
	 GbBWkEDaB5lY2EFe7lSS1mDFMgEotLTDo4MaIs5+Ej1AuhDEqGZnIn0RpYG1Gg4Ab0
	 FJl0KdtL9LvuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A7B3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167072768749.322.10664935664407779093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014771df662c137cc6128faff6da3cbeac17aaa72647d2a8dfa8a13d7a66e7ea
Date: Sun, 11 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670727687
