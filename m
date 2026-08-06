Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B1C40EBA1
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786056634; cv=none; b=ArXAvOk9nqKWF2kzmWuoGWxeS0OAgee64THDZNvGHSZLvj3VFy3fe7h21a5dvUbUwEWjbaLzGh6YhSJo09Z+56HxLAaJkYW0Cu32MDMUgmhqjxVlmsMtEP6dQIE1k5fKZQA6Iluz0UQ3CNCnGYmBq9FLECm7ooNk3Hv2K4F4bBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786056634; c=relaxed/simple;
	bh=qGFlGGvHeu7FMQhO+IKoIInEDm8L0O4GsA57CaIL5NM=;
	h=To:Subject:From:Message-Id:Date; b=anBqTqsm3XdtvfXLnKYjPjHH0VIfhJVn5zbCSbi6sRLRxams+340DJ67FeR3PJxd1Mth1+M/FjYwqV3zfa0U2aIFbr+ISmPEDfZXGpRFppgG79Y12HKLAPQHYJJSUvvYCBAhiXI3XqkGio6emFeQ3YqXbMNAtz1pdkJDhpEBPTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJuFIDOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJuFIDOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFFDC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786056633;
	bh=qGFlGGvHeu7FMQhO+IKoIInEDm8L0O4GsA57CaIL5NM=;
	h=To:Subject:From:Date:From;
	b=AJuFIDOs6OkQGaR38hY7Y0rlMzW7eZOXVQrGfyS1CpW6u0pf2j6NgXOwdzjbyilG+
	 DQwtEeCb7IqD1R/1qp+NxF0fcc16SGvV9mtgjWifA3yVowGPl+Sp6pduyh04Phc/W+
	 5OFhbhK6x7LkkGvakKHYNvmHMGKArk1U8j0eJS/giIZKp4Av3G52bMlXDjGZMqxXdb
	 6ZJrlt9rX747Uw0m3XvfKBisd5XkX6B3J2Szc0gzXQ4gdLunf6W0gpWnMV9Qxo+M7w
	 Nt9xZLorIn4KDa6etDnedf9HN4il9p1ulTxwUk0epMnUZDHBTd1aKEaq3nUAWrFr5N
	 pL1EJv1tVhCqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96AAC5AC7C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605663368.26957.1938406264941810066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d0148e8dc404bf11be963ee16cd3353b201fac729d505310bbe81a817d1585
Date: Thu, 06 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786056633
