Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB2D320E
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB3AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666980654;
	bh=3fiNRpxpzsWAt5K/O6yV9tHEwM8pbsq56dkELCufAmE=;
	h=To:Subject:From:Date:From;
	b=S2kw4RjcbEyCk5HNPWJUHNciydd1TY31PN8gz3cIXJzUYA5n5lPH4FC3mcBq+7Qoe
	 IVgG4ikyj2wX8yL1DAYSRdFheO+O5OxQS336xp/N1klQJxfLjj5glN/D9I/Nbps3+T
	 2bKFvRUA8xNk+PsUQ6FZk4V53kbFmKDBLhh2g8kA0G6xhPMGJGhz43Fh3GAKf6SjNZ
	 fSELPk0K0d4EOlhJQb5V8SZ2NUu2wPzqhW7eh2VSFTsoEHH9IORzPAGX6u09TXdblL
	 nZkxBlvitnbmH7HhwbmkGniv2XsCDcq/4+H2Ws8J1/CevtZLa0wWhnw2jJ8m9dE1k+
	 EtnzzPAecVMXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5528FECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166698065434.18647.13312708273053531061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c66822735c7a4a0e71f628b660f7eef16a4ef1d8dd59c2ef252f9fc2c55ec7
Date: Fri, 28 Oct 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666980654
