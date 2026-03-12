Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1043BE64A
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773326694; cv=none; b=LTnji8Jc4khhuw8bf8P2E8v7DMT8KzRx4vtHMj472YAhS4lHU9KcQpcoIW6nLYSxNlWJB+OXCiMKcDhAKq+Sy+jruux/j9MOeG5FsXUcoRxcvQAtC+A7yD1DAQh+5ctJi6YXVniMr4sxJ5vCnTwiTASQ+wfCVK6t+3LtrWzYHDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773326694; c=relaxed/simple;
	bh=JCffYUMh9ArJZ9rn77IBMOv4HxbX5m9jBEBdcYilz8s=;
	h=To:Subject:From:Message-Id:Date; b=T0kdHm96HWhwDK2eG2BWpLghMV/cM3S4GICzDZ8sVKA9pkyWPEFWTDhvouSCaEBsa2RCELJncFCFf5k+3Jpm4UsFf8Qzi3XCIHdl81BEkLH4PXv6P5WLBhao4fpbMTG67D/vtrX8jhH0mEEGkCoFtADkWc0GippNg3W1l7H7XF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORLOdZCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORLOdZCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6BFC19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773326693;
	bh=JCffYUMh9ArJZ9rn77IBMOv4HxbX5m9jBEBdcYilz8s=;
	h=To:Subject:From:Date:From;
	b=ORLOdZClT0AE8g1U+2o5CsrGg6CoNuD+Sypju+g7Dart9WZcAQgxQLgYz5xFGVvQP
	 EbvBKzHltyJLlmkq5b1qZIJg8CmtTGP+kVeUSMfAHeNSGYu/3cqNWENcpGb3VPErI7
	 ufb95+rEqpuJPYrdBPDG2tEQStJ0iS2bRjnhV3u+tTO7iuzkb3b+xPfO0K6djBrpcn
	 v2EwKdAYzOFdGO8B2XZ/JurCZSLKV45Kfi3QBPbp6sCyQvq6PhVJP9eJ/a5nurlxyN
	 WZWyf9bttLsrOUIO8OShTseKuUNPfqaUAEId50CHL5hAbxH+KowqM9ygaGGVGuq51R
	 zQy2194QLABqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE491067040
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332669357.25329.6531560906552659860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13c61f2947b127054c094dd7029040c93fe8cadd98f06f40496c0baba5da2623
Date: Thu, 12 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773326693
