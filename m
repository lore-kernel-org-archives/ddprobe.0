Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3473C278771
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754126994; cv=none; b=bosI3yIPwGXhVnYNlQTR3kQSpXv2S5nY6SjQSgJYKW4FvkG9LUlEObDLZvZCBf+DaZAlVvjVtqQx5YOMIuBo/9ZfouEtoyk/8iNbZFGi4B5GtrVtmtRrexkA249PlbQsmnq2agnjsrwt8RT84trSm3bwfizA/B1VUAXN1FAmopU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754126994; c=relaxed/simple;
	bh=/Yz+xzkowJ1LICkS8Tz3Y4ZCkCAo0ovD42ANX4qFwdw=;
	h=To:Subject:From:Message-Id:Date; b=mX31N7vPaVw1wlYjGVUP9jPj2b5juiDn/MMUwj31q7lWBFZWG7easpJvmRWou0f2z9NjXGXj5meBkviY6Yzp+VFq+Lxa22RMK8AWx7l/ubBmTXwCg37/lfJ2ld19deYB0l+AvJ3yL9iYyIVTJkB32e9sxEEzI/9ZUj+1OX+uRVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYIClWzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYIClWzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0674C4CEFA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754126993;
	bh=/Yz+xzkowJ1LICkS8Tz3Y4ZCkCAo0ovD42ANX4qFwdw=;
	h=To:Subject:From:Date:From;
	b=UYIClWzZjEDOdEnEs8KbR4ZH38ixSsUNfN7mg5j1ljaxxpyx2hVJYaW8SYEWsUjj4
	 wgPRMA9crFAnLT80NuXzYu3shsiCkJrN3G9fuZgADrZS7X0+Qvxgq7d35OeWvNx9v/
	 cMdBniK85IcAqL97c8qrNB3CtQkpAixAJJ9vZLvkq8zngmFHLsjh69/dUHi1oMtTrb
	 PUwyq5M/aMMH98WwaRdk596eWugWQC9b3qSLd3Gccw1V0WoSr0Svo/Bt2NkV79e5OP
	 1MEuqsILj+knZiZnallgapv/WcTKzlcNTFQfAOqxA6YNrgQBIhYViSurosXa2JJBRV
	 zDwZOzTglpgsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA06C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412699357.20818.11642014452708483272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa874fa6d84efcfe0606b6ddcacdf7faf8f4e781527ae41604e0c429785da5e
Date: Sat, 02 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754126993
