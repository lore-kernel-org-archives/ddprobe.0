Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A53F174F0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C699CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688161388;
	bh=fARaxF8ajfUlhfxxDaTM2qCOPD47exiMnelDkwKGt5A=;
	h=To:Subject:From:Date:From;
	b=DTALTHCX/1WZB+WM2sBqo+3wrqUTbk+ASo+xxIk8K+R1VdDqfgQbrU/MoNLOkrIO7
	 ywbncJDphkecJaNpcckJrlBU9cCNsMkXGyr8ck504qfoA5Nfbko5wyHIWsCCt31P9C
	 bAqQeb/R0o9LtC+GU3rvI/1RzVZ3tfIA1w5Qy4ai1nTCL2FedV1nDBz4xTxtCMie2C
	 fMziH35rt7+zktvx7YALxEWg71+lV/sNMNn3x1uijaP/3VFys8Onjf4GOzqJbaOdMj
	 OJ67CrEUc/c02RIzhjUHayKuFh0pz3q+VPDKUm95lfeVWNKjQzweWZtK4lDm93QZhD
	 5rsRRdRXyNvkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F0EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168816138869.26405.11754469752185897434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc1659b69d5839d0612b5e0b4a8c4ce623ba4aef737cf5c8d8e0593bc1200c1
Date: Fri, 30 Jun 2023 21:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688161388
