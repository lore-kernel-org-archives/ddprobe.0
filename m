Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7279A107B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7872C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685705225;
	bh=5NQX2Tmnpd44ATYt4vDYGmSDukH/tUQ34zDFvvfjXTA=;
	h=To:Subject:From:Date:From;
	b=jRFFHbPSYbf/m9MFo5OfDaiv1IJ/jJ6XMpNTaHVUdd0+oXEMJiB5lBVZtqYMtkFZV
	 7GTFbUECfFhfAIVIzZ/cdYSaNVWZjMRgBe6tjSN2N19rmCWy0vJdCRh2C4tVHUXSbu
	 TV0uZGvCypRKJjuxIvKMkqQ7nBKl7DfPtVsKrxKAIRwsmo+uohxuleXjWVKCyRd1ms
	 fgmZFldU+irR/glzB00Znsxmwm/HrgVpZtp+vAv15LH468v6hCh1P+d9Glrkq73fdm
	 2vWGD9YRnA06LamUZUN6TrSg79Ys4R3wJD5cr5xpndwU8hiZxJY0GJ1hXC2aSZOPgr
	 C8+EL2y8yeErQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C894DC77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168570522581.24725.16797382875697055914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c344439af780e7c456bf06de66d6e4ac291a29431b540da497860f60a2d799af
Date: Fri, 02 Jun 2023 11:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685705225
