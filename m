Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B231FD2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 08:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E589FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 08:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677055265;
	bh=d92Tm2XjOc6kMgRwqZftpjEo3AHT7UmVbmMv/cbqOU4=;
	h=To:Subject:From:Date:From;
	b=codBANFHF3QPKbKGQopmkq/Z8Ba0FRLsOBdZgLz8fwlksbgQ0l+38GsBet8oeem0H
	 nAWWvp2cx6gCMUKCtrjey2xfmhCsxqkBZIh4V6EpxnQWdCJZ3V0NNIqrFwTgvsWv10
	 zsblFTDNeB3KW6Z6mxRVg6jEsys7D6oxmdZVekmmlmD9lI0NsObnZ2wicMxtSx6Ol/
	 5DDRFkXHV/tPv4Jg+ax0wFqqThyDNWvomBSFzXp1yXCvMFBlp6J4OYVT2dcB5nH4Q3
	 jGurZApxhWUtDkjJPZ4rjFRyih1oCuy66Tja4TQVszq+CiOpv8naSZ3yYfOCrf5IAH
	 HyqXeMIWrfNlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B6CC6379F
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 08:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167705526580.24567.9450006670777208999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b3de901f4955e993b2697b854a5cd2ba05635e26b82442249bd9ca4ad4ccee
Date: Wed, 22 Feb 2023 08:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677055265
