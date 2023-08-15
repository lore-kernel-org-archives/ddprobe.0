Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98A5017C4
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 01:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6B1C433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 01:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692064388;
	bh=R76ilC+Lbpj0mQq0YAkwtMH/QHRB5YqS3yCdCh5RMYc=;
	h=To:Subject:From:Date:From;
	b=HbwZc64JYxTe/hpovAWWajm18PJLyTPXgvU7f4Dw7sfy+GUJdImiwzfDW5yEAUQIP
	 S0WDCuqcE/Tqjf5wLa5ihi8X2AvkXKq1O7218u3HYuOKUnHqB3gQQvJ/0IA7cGgdzJ
	 RMRZA81PCnVt/OdSUAkGRAcGRnQHaBX+xlV0+hpBjj4BiB0Ibvhl73XbrVDiIcQrhP
	 TXFJv24RHpWD7n0BDg2p3IlProHvMMkPoFjaohfM6KmRiOmLazkgGsLAP5bCFxxcH3
	 myvgODUzcotg0Gypbp72ZKIh4/NNs0soye0l7OUBLG6sJgbiBWbCMTADlS8hCSOeKm
	 3FJ4H9bHJHx2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47B7C001DB
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 01:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169206438872.28540.17781285867179244568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c037ec56e854917e2a068fdffdd8c846f9f48ce0dfa5b3f153283d4e7ee3a24
Date: Tue, 15 Aug 2023 01:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692064388
