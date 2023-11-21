Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A09C1E523
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlXOg3ZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D252C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700595496;
	bh=zK5+8P1VbE87DHHhAWzKVwXv7qxppBiZ/UezTY5ZdS4=;
	h=To:Subject:From:Date:From;
	b=BlXOg3ZEx7e3ctXKKkA5vmtb9YoD4q4d83nHsLBu+NvqV//M8Ap7OzEqAomsHjrCu
	 MNMylCst5AcCbrNpPgo0JBsvwtTwOrhsFHFxr7naiQ4YuxPxKE/5NGWRJOQh/m1fAA
	 Yss1yl1TxQNsQ8Zkqa+nF9R5YPj+2/jlCjZmMDQOP1eM46rrr6H2aWUIU4FAt1z7K/
	 rDTrwbHD4eIoXetbmRTP4EnvzEfB9cKMLFWtVneoQ3oEhFsn+rnnQHddfOsJMEjPiG
	 cB4YdU8S9z1SHAmhkfieKxH7zibqhoLA9HdSbZ1PhDuNnVzcjt946j825eomSRvICp
	 cVrO2hjX4tyvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBDAC61D85
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170059549638.6892.10666571977763757971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760fa4f41dda65991ac5996f96a091a7e8423d14cb5d5b734f11dcd211f79694
Date: Tue, 21 Nov 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700595496
