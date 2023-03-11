Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308A57B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 10:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8101C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 10:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678529105;
	bh=XjcsHwvUSVD4pFzvGYf+dIYMMvFZ5g5HPy4J/pt9fm8=;
	h=To:Subject:From:Date:From;
	b=MITIL0bwFAuxPLmSGQsgGyx5u4mgGiIF8TVy7owykzqJPBB3HMmP/3q3oWao13cnf
	 M6oUdvYzTj/oOWjE4W2I/FogCvHSJQhusYR0Jt+N/0cMyf81U/4CGmWhX2AzrCwmJF
	 dICMzms27lvENbxOgin6E6hA4gIXrZ8TfmUvCqL/rx+zb//DB8Qom8fr8231+4/Pks
	 pM15G6zYtPrj++nzjCQrUdyINHrAifIvGePs+PB5GAgoqHYG4ymNjSEvQPMq/IDC56
	 Qctl122Kz0C5cJG76dlC25u487LUwJEeaA3bDNd6bjGg659GLIEwqTpxml2KPnl4G1
	 qukSDRjgf7Beg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEE3C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 10:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167852910576.664.9773334632651329507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711a08391b762fe79bfd86acf090f09ab23917726a06bc53991c44f869fc3a4d
Date: Sat, 11 Mar 2023 10:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678529105
