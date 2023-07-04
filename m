Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BFA814
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 14:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02CDC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 14:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688481968;
	bh=E4kL4aZzBZHJBv0KBEfZE9Zf20ZZH56R70rv3he7GCs=;
	h=To:Subject:From:Date:From;
	b=hDfbeaq3p8Kp1XVQJZDc10Qbc2c8LTPvBAzgcPc1+ZfSz2o6cMHJomne+B0dToGwu
	 86y7MSVC7DsRtQ4r6L10KcQeQIZQY4XfTTeNrx0/2NMxrjW8iGiej3uLdDN3qAlwAN
	 HFIiPrB1EtROI4SEaEjpOWdkTNZOhbqkOfWyqyeEGDOsvSkIASNZkVpVnuxiRNaESs
	 oruBZjj94F15PKDexUj3oJPuyzueiIP5gpzwOAsHdf9I5EuIhKYbzi7I9qP5PtpcUa
	 GOnMM4QSEr8aGnEPBq7TY3cm7f7VLDxEqVH6b5Ct3m7SNTxaqEVivakBRHYrBolWa7
	 gI23l9Xv8KAig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC94EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 14:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168848196877.16051.5548618633164660408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e336b3340a1913b51eacfd022d178c01f3c6dfa8216ac59d4125c6ffa3fa116
Date: Tue, 04 Jul 2023 14:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688481968
