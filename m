Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05316ED0
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIDXdBLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7883BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702783096;
	bh=mJ2DyEb7T1WGW+c8FJD66lJYr5EXM1EUzxRnYbUhxcI=;
	h=To:Subject:From:Date:From;
	b=QIDXdBLwSrQkAJ4sepG7koOzcDGVcEZr/eqtdu+Zk6Evxv6z5g/fOFV+lBmiEZ0b2
	 6j7Ibx/PZjJqJECjlPCa5rjhte6WE8hTxQkfQMHxAlZoIzLUwq4gB95aDHtyfPC25O
	 MH6y0MsqhbBGHPN1GsNa9t4/ZU7bVmkHa50Tzl2INKbvPwEGpKxC53tS1fEd3IyJ9f
	 L7X6cPlKjbxy6C725E3usGz2RlN2ow6eRAkMWhSHPRE/+nJT09nNC8BYX4N/rObaFV
	 jMdrSL/aeLaA5DxcmRbyBdAJYQI1T/uhh3MZ+lSGtGir/GsaLZ++tx5t2ERGtLcVHC
	 8QpXrIuLBxXuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FAA9C41535
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170278309636.23710.9779283870043204134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1ac4a2b4b68c276cac1a718fd9d0416340a0edb7466ddba5398f59a38a9a7a
Date: Sun, 17 Dec 2023 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702783096
