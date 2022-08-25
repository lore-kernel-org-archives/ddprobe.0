Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF06133E0
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCECC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661442052;
	bh=2AEAlKTRAVu/K8Xf/R4Q4ftUeo4fudRAi9PJCKOYW+U=;
	h=To:Subject:From:Date:From;
	b=t0GjkPMNGwsO40Hw2KrJ4rGv55imofvqIblp2t95II7z3pRQcmw9K/whawTNDpgWa
	 tOZXBnpLHKBLmP0haswohk9gvRggeJEPdeWCAHvhA0U21HaqVfddufsw2OWnEdRD/1
	 a4cwFeSalHmYVbPmz4R2p3leVO5///2p7zkRSzpHMey8ARfJu9YcjK/osK6FCOTUIL
	 wirpaLF+5b44pbF8BqOqOpMKJJ6qQvGqdgP3WiKPdSyhLc7GLc2DyPpsJDqYDRy/aj
	 /UwnzFK5hapMSz2j6DZ6tuli696Q/Dtmo9pf0VY/q+pl4CuiWToEcaQ3wAAJ1AMrBP
	 A5xBFfcRRyL3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C0CC28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144205233.31449.7794719612786531131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f20b577d075a749ce894c7199f75302e2d31ba8aa245f681132dda1d2f09c04
Date: Thu, 25 Aug 2022 15:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661442052
