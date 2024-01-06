Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055BC847E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ftk+9Ozx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C43CC433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704558496;
	bh=onVhhNy4xa7X6RhcmWsOE017D+gBWesS1rFTX/P5E6w=;
	h=To:Subject:From:Date:From;
	b=Ftk+9OzxmtXPnzhRLxtR9Qn5ae8ETDGrPupmtqRiY8mvrQuJyr3ahjUnBVcL4eyx0
	 5K0Uqsa+QFzNkVYwqL06xxGW+HV6PVaWwl9f9E96DtS+JlViil7daZ6q7lJ71HUUwr
	 lDuIXugEwl09GdzF4T2XCLjOW+p5ZSP3+KFEq6c+W7DvCS5e3NA3clbjNTMB4PrH+k
	 2fZVt4OXI3R2c7W+fl6/lLDN49PaPJA0FxKBpRzHVtQCO9Z7AfPs/BaLajmWzgRZTQ
	 0WQ0PAxOpyTatlP+u0WtBCYW+E/SLO7ka7CE4WKm09k5wIHkpZ+g2rwiilYMUJdzNl
	 Yahr2CoIXQJ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611FBC46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170455849638.10947.15029632430621610988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d782dcba4fe4b738cb9434b08ba77027e966c31692490b837a9245e341cc7f6a
Date: Sat, 06 Jan 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704558496
