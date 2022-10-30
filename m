Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDDC184
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BBBEC433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667169654;
	bh=8Nu8bJd0buVuqWK3eTMIzKVcmOl8Uz8RX2set3pvbM8=;
	h=To:Subject:From:Date:From;
	b=a7r8xEGcWbe2w/I5tLYB0tmzTD+sJesv3M4N742JnRm4tQBsKP3BSniRjtbP2+8ga
	 PkRRMY3aIL/5oLbd321Pv9BKAtBbDKkvPnYMVdOxd3xB+dTVtsPS/hOlEVMy0GNCy/
	 bis5ye9+szfESytB5W/OFcGZbbkXYsuVXCIf3IKDzQmtPX5asq+QRN/nVBjmCWvw9y
	 UJpjak5QDnCyZB6fO3VBdx8iPERsFutQnSZbc4S7v9+4O92i5tusm7xb/W+6ENOvwm
	 7s8k5lAx4N2A/UubMUSrBScpHyXB4xAC52Xbvdy0G5epr74f0d5P+wGEQS+n7B74Fe
	 IJ77YkGlEb5+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5533EECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166716965434.20243.6876680628011772893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e21f05b3ffa8143a2852662b21369c3054371fffe539372231c1d5756765c4
Date: Sun, 30 Oct 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667169654
