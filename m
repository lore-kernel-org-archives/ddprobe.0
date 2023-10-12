Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B21E7F4
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 03:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5ogxQFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5BEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 03:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697080628;
	bh=JBHpinHAzQshtlPy/ouppT5nQc6MMosqTNHdNBj0P00=;
	h=To:Subject:From:Date:From;
	b=P5ogxQFCm9YusithVy5nB1T+s9niSF9dOjqnQsmPxv29YopmkTDzybIMCN1jRYZaH
	 BtahueGcLgvFjFP7u1C80/xyZDh8KMxUnxQS2NLnLtSxxKryYPBvfRBy/ZfejGAYC3
	 2PjRYDwR0DDPSPgJyJZKLPdPdedjoR8cax1PG8z3vGrXluRgeWvekJjsvJDS4Uyt16
	 aGPFhjwk3m4diEKgdXP9iCoFSb+dzZ/EPlbNSgpCg/l1drZlUsnI3AzM3UwbFZOGl/
	 kpES4a6pWyVealCbE8D0kmwLetQZwvYTPoUk+ZVtE6qKWF/bTS1HtXvVwwYbsqAb20
	 /I3osYnLKtlKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0831CDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 03:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169708062868.21007.12040398801086586465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ddd048ce33248d628e14e3083b6a266171b8bc13d9bed7aa54651c7ac6efb8
Date: Thu, 12 Oct 2023 03:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697080628
