Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28AF3212
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70309C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665871253;
	bh=4syNwpcGRUdSR1gj9O33x6QMmh7og0r3Mc5knlKJUXw=;
	h=To:Subject:From:Date:From;
	b=E8MHAkGxRN1ZN2B8ySypl4Jn03sUFF0MU6coQkK+Q2UfJZJTXgoeleJkPXNllCWKn
	 Y23ZGmD0wbgvrFvmcGn5ccaSTdJ5RXNDRNs6r3j4CDrn66Pyrr8JGyjtLDshRq+EnX
	 xgQC7XRRgXY6yxG40orvRnkEPiP0ppZSbH5AWLiAWawBJs5HvXIU0jWd4IxMo1ClE1
	 HRydw2zgHP+g2P4BHgzaOQ9z9o18mFdz7BZC4j48EWRUp1g6fzhO38pwJkqUMY3BZ8
	 NmgMVeqAMuJ0y/tHkxM+nuMmII4tOh8FxWZR8Up6rsr9mTAoiIjaU0nhSw4PsKZSIR
	 2kBGnrUSl+Zzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58854C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166587125335.11503.7634699196111506271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290c9edb26e6e23dd9335d4a56d5fdf4a5ec0cdffce88db8a1676c6c1cc4daef
Date: Sat, 15 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665871253
