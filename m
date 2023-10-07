Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4EA2374B
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 13:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InQeitCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2253C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 13:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696685829;
	bh=GBNrvpIXc4zXGLKjOBoVPbHOCktDYTBwMRz4xtWaCH0=;
	h=To:Subject:From:Date:From;
	b=InQeitCfZpRrAVAwrdRhsymUfmwq998x2NW0aS1c7/ad6PSeCtcPRJUmJHm2lvP4r
	 OzIYxWO4JaCpC+ZxT+OGsLTxcxrCvwuJYMm/tyDeqSEPI/7+Np0BIbbD+uXzPEd/Qk
	 ZnOBprHX0aLhYnm7PzkNeOH0PAHWdGgd5ThBhvR/H7GEKtd/gONkh05+rqnL9Ya1BG
	 FTAKa8II2801xFoSCFpwojiXsvuLatxG5eX2xrEv0xMyRCWbaSQy7XB5cmZoueODry
	 f19JvprkwbVQNZyo0ct5G7/I8gcuRLXjzVxvCdiCeMB1kDb4z8P+LPmE6EgNlQ9Vse
	 rzHee5zNAzSFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8997E95A63
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 13:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169668582880.19258.4659785714061576103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201f16fd940b0eb68fdaba9cc25419ef95039ae090955249e04f551eb3cba500
Date: Sat, 07 Oct 2023 13:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696685828
