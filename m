Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6203F7F9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E53C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687602788;
	bh=bh7qe/lhjLC1pM61iDwgXWA8nQjUzNxY5TKqbEM5Se4=;
	h=To:Subject:From:Date:From;
	b=USAcnHRGwCJwsHYuBmVOxZCgJojU+MEZG+aB82yjC5/8akkPL40kMquDIO3umAm5f
	 UBIvi0UTKYA0dEB5wZwEmgXRZa6yqHVzJHCBWPDK3PcxCU/5cGImAWCWPef8SstfDK
	 ezGLEJABQORBmWZ5w3GDbwEpwXJdQzOmgBYUWj+NcoZK1sMHPx83s2eSMIogpMC2GP
	 KjOpKpzNRdN5FNXcLrCBdUtuj8mWQf0GstXhUUXTGpn38KdsT3fII9P6oxifc/pxW+
	 NaAaAYKfYEUwdW+1+ltGj94gb4pHJ/QXzMqdtHjzx+QYii+ewMLoecdBeB9JoLOicQ
	 ijANU3ja2RRbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7873EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760278867.24484.6196037035310180688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb69ba730a629604a67ca242a21a4668a7f921730edd383e30055cf363b3b065
Date: Sat, 24 Jun 2023 10:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687602788
