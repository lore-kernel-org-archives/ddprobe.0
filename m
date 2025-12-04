Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B301FBC92
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764881574; cv=none; b=lIvLS32mPWAyyEh78zmOVKk5bCoYRX79bwlH/R/Tc87McjpWD63vNJWn4HCX4Ev4RXCtIwCB3RCyqcr08nBogPS55oBkr4gFE3nzUv/nTd2ptAeitZQBDD449MAoxRc5rrGZaVCAp9qtnH7SZpQgsu8g7u/ER4uCi4hFpuHrYP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764881574; c=relaxed/simple;
	bh=9Wq4QeuV0LwB2elTgLPxZabIwHcSPOe0KBRRafNSoCU=;
	h=To:Subject:From:Message-Id:Date; b=NewaKgymWnAmDRFvpJuhAyHIo42/dPUTpdqrxixJCDHCkRq9+fxXSf9FrCMdELYlxnQTgVjkOAlfpflfU1PAZW9R919h0T6c3Mzh+hIKa9iv3cA5F/+tJFYfcKTMs19WcEkm6bvID9evpN1wBeVZ8Wp62COTWjzrS/XOONhHWwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hu2ZD6Xv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hu2ZD6Xv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27ECC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764881573;
	bh=9Wq4QeuV0LwB2elTgLPxZabIwHcSPOe0KBRRafNSoCU=;
	h=To:Subject:From:Date:From;
	b=hu2ZD6XvVGNRhiMTDXu3UON0CSr4G2MaZg0BwfSsgRWJEhT2OZxlsshatuqBjg4y1
	 BKCc5XdfFD77Dw40y/R3pM9nbgihvf9FHZ+5IEHkFsFU0zIG/gpH3wYbijhkfFV4VZ
	 YXQJdqfeFApwKW+SYxULNCrboD+MXdx6bhnl999WlPZL4jlmGgr2cqUvNqZOD9xyyZ
	 z3FeU4yGOixWVAEuDYk8S6agiNzq2mnwcblea+7GhpnaIDc6EHcb8vjGIhiRFeiqov
	 uIA9u6JT7j1kaQBTZomjjmfNClLLmxeUyD95jabBU9ASj0RF7bnHZVqU5Dac+AEbhr
	 2+MomGEo3Vtyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D45D2A537
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488157358.7238.4684425932315628084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea04b398178e4bacfe73f8c6bb52e574a400d0f42279f04aa81057c28b895e8
Date: Thu, 04 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764881573
