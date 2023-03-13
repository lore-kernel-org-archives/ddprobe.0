Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628A4184
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 00:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0228FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 00:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678666626;
	bh=FDy3vEcTKCe1UN39UFrurBAVANxAbBvKnLfpMfV+LqM=;
	h=To:Subject:From:Date:From;
	b=EAxoTY7Ltj6M0onVaISipR+CE5aBx9ag7OPnhp/FbD8UztUxvo+c5LCeUsDawO065
	 S1+DWrS0UGEgdjGA0J4yvxlQG4FCGWavA+VEBsXRsE8d4A9Q8oLxbUwHgueOL6kUQU
	 Pm8LB9ZjFi8IEpLUPJMDPrjIOAFw+ukvzIZHgsTUVNjwmVerYChirH6/yvJn+Qz5rW
	 gd2B53mtxA2fwOap4EtKaF+uP4TKyVt9C8gnCZ6xpJEVExuX97qBus270/TurnJtAz
	 ZSqV+nZRMsUhNDFcm+yuGRA39fO9d9qS8VRloA3+u/+EyQHMGwTd1UCqBawG1uoVfm
	 k1Y0zR5qWBu1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8A6FC6FD1F
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 00:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167866662587.3345.10905886471722186651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472b754d25e2e27cde4f4e1122dc6fcb5ed672e8655c1ae5a2665e2f5fdd9696
Date: Mon, 13 Mar 2023 00:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678666625
