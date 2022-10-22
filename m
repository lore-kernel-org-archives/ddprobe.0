Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B3617E6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B994C433D7
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666403453;
	bh=cblWu/gWdOZId9R6NaoOHNfmNTrDHTHqiEi3wAZiEIw=;
	h=To:Subject:From:Date:From;
	b=JkV6eBpLntwM9/ikhJLlCAZO6xSUapPAQD6bHIPIgQ6k1mCRWtyhbStc66SCBdteJ
	 P6tHEm41QSJ8eyv0mupYaknnHViN1j8oP3xS43qcnpy+3r/XWTb6Yr0YGB43sF/b2p
	 sOoqi6XZ638arrVZuUjbwvYRuEe8SmMy1Y7cvzUXHvDIrXw1MZ1MphjTYmBSUtYZER
	 K3kedum2YrVnaMFUz7EY4MLTb6TN6gvARpauJ+K9ui3c3O3igZEX2K843JCafq50k8
	 qEpu3ORNogoOCkpSuFIbMbGQ/5e0hd32NG6O037cADSKQSmQdYlSHJlCy4jWyYc/sx
	 0WR2ERuvJSR5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9D0C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166640345337.629.9352123639670008785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c7faed599528e4dfbf27522fa70aae12981a68adbd07d3ac2787f6dcd4cb77
Date: Sat, 22 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666403453
