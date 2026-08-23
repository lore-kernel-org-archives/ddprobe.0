Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D20A2853F3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787470834; cv=none; b=tJhesU5NWh+U76WedNyE55bJkmjSs06Qi3SypwwvdpifUbpPLIFVHp75JcvDDvthYpWcyxvp4j7BbyARTfeu2p7EJyHfabRuUsuNnkN1HNFSs0E6kEMAUtPtuvBcOsxVn+n+XCBinqD8AvzXfwMJ9ZG3xTE5bEtL8uaNa1+pHuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787470834; c=relaxed/simple;
	bh=XqPZar6eSq5RJqdZ9loDKznnIsWWy0J3MZygTWNmzUQ=;
	h=To:Subject:From:Message-Id:Date; b=EbYbCcBiWClnsFzYpOesAoZe579fDRADjPdCa2RWLQEY8wFJukynHL2j4Ov7gNMitbFCVMHiy2mo33ET6Gq69wbqaESrlQCpAT0wBdRnJ+czKIY/WF1ZbbeHcc3hU+sOevdy7GnptXod8fRSaePG/lGTTskWEnFMo9qrapUlcU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0EeWXI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0EeWXI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D465DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787470833;
	bh=XqPZar6eSq5RJqdZ9loDKznnIsWWy0J3MZygTWNmzUQ=;
	h=To:Subject:From:Date:From;
	b=t0EeWXI5aAzY+95mBW8x0AALxHZr5wWCnwWbY5YwjHycWvk4tozjGzzwXiyx1lOou
	 TwTsuLuXmEbVLlAqJFxrx3LHXc+2U+yDKF3jP6jSkmFmW6qloAKIpx5XBQPQaSrcMn
	 8JBM9XgUB0EcnRyBs2PEfZH0fvjJdkl/nBN742XuB6vO3V5kISirsoPRY7K5GjmYDH
	 zfyaAoeHdsgfJXXc0uRdECCGjgtLtmfVvu+E9uMwb9fCnw6BSmhy5SVEh8eg13krBz
	 ngh2M2duIK5FkGxUP3ihjJDDERrxRwvRW4BcYqKDOOiCJiZfbGyKSOqCb1DRtrsIjp
	 NMFb3+R3JA0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED5C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747083369.27849.3527291108259929517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d01792309d9d38c2dd757b2d6bfbe8ea92342055bb04d29d817a284dae8cae7
Date: Sun, 23 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787470833
