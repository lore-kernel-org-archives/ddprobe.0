Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FDB78F2F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779153034; cv=none; b=QiteXN9RJLR0LnDGvPsytqAZkhuOCdn0hZSXb0Zv/Mk7P/D7dI75exau2FdFy56q02BU8hZ1Qd+vB3gCyPH+0/eyWqK40o2/HnMO8QCEtW3qKqPZ/nkFwQI+8duY3t5YGEbJ36wbEXLJ7fTNfMVNPtpwEPnYPcRT3LHz5nUcPWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779153034; c=relaxed/simple;
	bh=3e9oLstNs9C0dctFp1SiiH0idMh5aaI5a9JtmisbGSI=;
	h=To:Subject:From:Message-Id:Date; b=re8qIzKGUmk0NI+5x27caifEAclD88PUvR8C+Si2p5kBFHobqqw7y+4JO0Sc7YB7XEMmAW5hie6bsZAh4pga9RAwQWD+/gzs9jjCBVF5knPnmUWqlxkG8wpCAmZo39BwIkBtxGagq4QTk901BgMyhfvlzFr4WnvLPgsbhnGMhFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3UROSF3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3UROSF3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C106FC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779153033;
	bh=3e9oLstNs9C0dctFp1SiiH0idMh5aaI5a9JtmisbGSI=;
	h=To:Subject:From:Date:From;
	b=E3UROSF30qdgLEqkwj7vJ1bJY1oudNxpTGcermAF0bE7HG4IEInRhzg2F8j2vZqgY
	 EVPf+MBzfTuBCFWDRwNWEHd9Kc5IfMagRdsvadCeWXzqticdFdvEZoZQTx+YNnZxy7
	 mWYr2RbVyZb5V/voPJQTnTOsqfm3N0kGTshgr8q1DiH4vboAaxya72MdS0Tc8i8nTv
	 ru5pZBlPQ/G+BzImDE1cgckekQLJQ70ehhYhjRRHuoncu5wLQtbKQjE8Vk3gEdn0yA
	 CQOZTFK/J0wVfmVdtcAHTDwDtysr7qHZtLbdwO3DcsVwep5eJtFr958BkMxfEZ1/6V
	 fA1C2Q5FP03JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAE4CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915303369.9326.9323561878747866957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c64eb5be378836b58830497f667b5e2ac2e396725cd8513a5587c0b7cf45688
Date: Tue, 19 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779153033
