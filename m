Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4059B1E4AF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783582714; cv=none; b=KXnthSxjyfWDE0o4C4ziYzhUth9hDYtNnrSJ9LGNO4sDPsugTk5eD4924oOQ9Dr1R9h34mwLJ0u9K/c+pxPFU2kX05PTr22e5+TYVHqMQ0hudtH/bmvzSTpN14SQPuWqzl7K92ZmgFdD07m+nUiULAqrpYcXSPDTknMBQEkY450=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783582714; c=relaxed/simple;
	bh=7+b4IlwEGf1aO2tbSWwvWIbHJmjm6rowgf4HTV5aT8g=;
	h=To:Subject:From:Message-Id:Date; b=GFI4XhAY77kXzrgt6/aJwDt8UyY4tFUY+UUVO9Qe+YI8LQqQ1QsTDEqBwzhsAjmMIum5Hq/iyKExhBp8pBLDlG7w/IGhkaZZTxl7r7kmCOps87Yh/TlpI40xHkxkkRuwiPb0GBGalq76rVb+oud7hJ5bqELQRzvJZT3pp6DoeaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHg4aEwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHg4aEwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35B3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783582713;
	bh=7+b4IlwEGf1aO2tbSWwvWIbHJmjm6rowgf4HTV5aT8g=;
	h=To:Subject:From:Date:From;
	b=gHg4aEwziZaTo1/cXEn7fRLlO5P1KL8HtFtXIhYr8CndLmksrPcJmOE3m0nLuHFlm
	 MCiAF2K1nkhMd7KSc4lG4KV2RyUeBpU3OmCdJUeYveVW8MBIXNIDM9QVAKP0vfn/yl
	 JkGAyNgvcPgO/zwshh7ybYGh7NnrtC/KkVETWtmUBIGaOBv8pNIaImTTCUMzuqY7al
	 otqMafBZZBvIHZh+lVmmnouaxbWc5dwCJhhWd7bhFc1YnOxs3b7M1Px+lKeQ13nupV
	 QiV8TSFlT3BkRl8uqFXy3QJd7pyz83eRb7mJIbk+ttrovtqVYqqh/RDXZwvxBllM2o
	 D83wHzV/VA9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB465C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358271368.14954.6338404253097983256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4e4c16a8a57ea510d3771edbd34241e81fc902ad1042c15976d7a8e0226178
Date: Thu, 09 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783582713
