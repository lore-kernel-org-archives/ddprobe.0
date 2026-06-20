Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3927262A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781927794; cv=none; b=ZV8mUWDP2cL9nOIksUpzHfj2UUAh/Aj5jk89eJgOW5XMdPMEuIDZAIfPx8OsQmDgJzZ8CZ3X0JMHZGcTe0/Ufe0PkzzXKt0q3QrmQm+q8v22pl8xgHl0gTUh8Aq7IdNRyB9wcGeT8dPtnOdT7HYIN1hjbmSFcWm0rYxQYdMQkJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781927794; c=relaxed/simple;
	bh=HHXS3dV0BsNqZOHjCh8WkQ8i/Vq6GCm0CkZgkUg+0X8=;
	h=To:Subject:From:Message-Id:Date; b=eChLipKnPRnLmtQXfBUKrAXM6+QrHLX20N2jgWFD8oM0zUdvfvuelS0B4EjikaH8jUG3t0N3ivwxo1pjlYoZ+kUA5ykVSseWWa10UQRpZkISSB1GiCFl/lFYTEwgyW0BG9OIJHadScl81w058DDNUu6TsfkpDL8mRBAase9KMX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUACJWs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUACJWs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2208C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781927793;
	bh=HHXS3dV0BsNqZOHjCh8WkQ8i/Vq6GCm0CkZgkUg+0X8=;
	h=To:Subject:From:Date:From;
	b=fUACJWs+ioikUQVyY5p4QBqWZKX+mLpqeMNDoWzVQoS7W1LrTnX44doIVwYcMeQVG
	 sSl51blQTa+cpM/cs5jDUDteb64hWhJHNKkYBRehZJS2Julwnvj4UNM/h1YzWjNxpU
	 tqcdridlRIiA7HXZRyudzuY79JtlLOznBi7taV1nauIH1VWT9PPjtDZcFq1U8DH7cG
	 Bye0IYqFuBPTxOHj360CQYDfqx755pvfu/LHAKGRkao4liM++HdiIBmiCTc8M7eewX
	 2w3mgbC0h86aes1NYeXbITH+8ZD+qazDH3p8WTlRdTPT1CWclPgNmkCfhRvdpP6z7O
	 1srOs4G4AOlyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F7DCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192779372.22369.7560422800933159163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe6910a9ee20cdc1a62405ab1746ccb2b20bbd6723314206de417929f524096
Date: Sat, 20 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781927793
