Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48622EEDE
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742746794; cv=none; b=riyjkU/cq6NfIE9bgie+1PGqBTx0pBO3uSrW/++Z35w09nz5rn0zmg1/UCg6FKJVvnQeWugP3ZndBoaXBELTnSHwQeJ6VRMQTXnS+aZmDjWJ3109HdApOAZ02V159WGpasxW+1FyywEb4sdtLBmDHcRQHBbwfwSotqrt7Zmmcx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742746794; c=relaxed/simple;
	bh=leL6YeYkvYIwXIumgw6fD+eQCqPPzFU3AtEzxvBI4Is=;
	h=To:Subject:From:Message-Id:Date; b=D2aAUcDIiqOcSS80D+QUdi/X02dpRiD1SX10drN2bs1IAfTak0JMrJ1yZQIOjVJ7EtFOfSE0Pg8QhSqpI2ve8aqSSHS4IMmL8Wd1T1loNriR4fVbSDszYoJ3a6V815oV4MaIGK+Rf9+onD7njPujfGqrQO4EhwRXKmr+0UIYws4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ja5xaHX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ja5xaHX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19D5C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742746793;
	bh=leL6YeYkvYIwXIumgw6fD+eQCqPPzFU3AtEzxvBI4Is=;
	h=To:Subject:From:Date:From;
	b=Ja5xaHX9A5NY/unciyQNVqU4Tq6/iIzajBUt1P/wKjyT1UwYdyzk7G3VMfZquc/t+
	 ZE+4y9YySLFT9vozDEXyXbDdHigTyml6twiKmrmCMijkwp5lboJe7gFiPuTqVmdAPk
	 cTgIzQxpDmW3s6MJyxoD69C0L7B5UeHGNzQU2kiIR2qUiuazJD5Pj50H7Hr4Xh2t1W
	 jzk0W5s3NapWd6l9RLUNOJR+5JEqqnz0Yfr1yWzsPrxtUz2MUE7pgOzBXD29e9cjA9
	 GAxpvkNvmFvnYCxvP2pMuG4ZZttNRJxRsXDo+QNa8OGIno0/zo0ljqnxxBV9IKjUMP
	 hWMlx2m8DPGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C71C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274679361.30677.13953549516686876498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ea3868352d70bca19579fe71185fee8f31808831ba3f0b13aead4e53c1ae5e
Date: Sun, 23 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742746793
