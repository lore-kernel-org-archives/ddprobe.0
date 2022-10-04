Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAF5160
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E4BAC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664842853;
	bh=afZtJLOObOy5bCw2CjuudXjMGB+rs8NfhUiQgsKXCho=;
	h=To:Subject:From:Date:From;
	b=cbQO1M9RXpBWD+bE4sZFF6StmJVA748cJmjrbXMyvDVjb4ipMkJQLn4q/dTirSVO4
	 nRQYBc1oW0tgwlVK6i+Ni0xUSDLP/L3DWP7lKU0SSbG5ywSAddZSnpM2QGEbuhXrnF
	 bN3FANnjfcrkgZaaN2pFIyUtUyzC6YonEjN/6YBZo9VdQyGEM5hwKT/oOLOZ/XTQK9
	 jlD6GP+OG4251TqOE8LTkzN6PW/kmNXDNGW5pv+E7KSDGNqfoFBV6XHRI0oeiF5d7b
	 27D3KL49xpDShG0VaJFVkC2dkATj5ACsw81d2tPNvxSTvG4bLhZ+E++jNasctjckqO
	 A6rkNF2ZqAxUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A3DC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166484285333.8636.2099572635216946242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739946c40b1487914b9f45131935bb8c4220223a98bd2cbc308cf8f056c8ed4c
Date: Tue, 04 Oct 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664842853
