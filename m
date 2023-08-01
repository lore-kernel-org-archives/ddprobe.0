Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA6F2CA5
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 17:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3606C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 17:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690910528;
	bh=GyN3+lKlXUgf8raRWmgu148xHemrjaZbfgcWQrMPexE=;
	h=To:Subject:From:Date:From;
	b=fLSlxP6+tFgtf9751fpCtsylyGg2zB0tMgQ6oeuJjepK26xQdQ+LXEGly+5XLcZG4
	 pnw6E67VBA0+nsBOLGyZCAPgZ1H8iBF6N4m12fxwPVbV7XM8LtYNzTC2stGkbp3CyJ
	 F4gqT6toEAjfmgSDbijS+GAxVNxintOWnuRUms8MAkcDzV+GacEFvQxsSg7HIrP7Ww
	 0Wvc/PFMlCLGap+DHpvRzG+S60EY5EsgaC6+xzd46hLnmkIxzkFkrUnrkC57svyRFU
	 oBke9j+ykrSknGZ+uBCjnJDtHUPCv7rhScrEY7ka+sx8Zjw/4pGhs0f+D70kVFZZl/
	 30FRtGuG0W42g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB51AC00528
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 17:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169091052875.1176.11396470797011200161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d5ad176fc564ce83f84b7493ab6304b5397ba7ba1008baa6df871410010282
Date: Tue, 01 Aug 2023 17:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690910528
