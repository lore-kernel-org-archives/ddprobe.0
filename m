Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5833CB2E5
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782311854; cv=none; b=RcvHmvWCIoaa+KVEjo0NdalJM7XHNCB6X2hy7VcVvSXn1Q+tw+YveIAigmcPjct7U2ZfkbEK6eePKYsh6z+oP5B9aizrLyP8WB0WbUALqFRVEgr+3CXStZ9vwwvPA+mfAzbnFc8Ehj0jZWffbW6589Jz7btASKjMM+Qt4EquTaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782311854; c=relaxed/simple;
	bh=Kz+WWA6/Pg0H6qB2QeCeHnjuiPIysWwVmLTT8j17OII=;
	h=To:Subject:From:Message-Id:Date; b=uCKA+uTq5Tg3Aqz8WaFp66y34M7b06xO0YOFnO6s1IelE9MhI6itxc7FZhuNzNEMy/s/e10xSrHDtDw1Q4l1EEznExR9UKsVMZIqfeiFihR1Z5/Z+f67avOFCY2iNxplDRZc9JMOhP5/+s+LxUAiUp2SEsZZyWOCw0MmMFOFG60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lfapp7EX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lfapp7EX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2385C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782311854;
	bh=Kz+WWA6/Pg0H6qB2QeCeHnjuiPIysWwVmLTT8j17OII=;
	h=To:Subject:From:Date:From;
	b=Lfapp7EXu7jHLMXnZXS0YNkN7Txk828oJLoupqltSgNC93fzE8Ur2gApTW7b13lmB
	 7sjlrkx+bW5hrwoebxaXbY8fw9QA2R3do9h78UF35CIbaMr4+IoKo6iPDXUJOkAXZI
	 9Z3Ylbn06jFtjjtxiYCgz1LDZDi/2TPeWsNwEVZwM2Q6DP8laclKzuVir7whPz2Lsw
	 mwhjZcaNqVU96lXU5Aa34m8q7G73GeRDwABB3mOu/1zvzH24xQPzHIlk0qOQjbvUoj
	 eH0DxhN8y1qXSa6KpTognhDZC+uTxeShDDLhWfG8+XwJ7f3RsydTJ0ub7N2XysMhhv
	 W6igR9kwSUq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C726CCDB481
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231185380.1481.7256978278949356853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1210768bfec5c5e6b6712233d0536d374fad74d7aa0494c054cbf1b4ca2e8c
Date: Wed, 24 Jun 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782311853
