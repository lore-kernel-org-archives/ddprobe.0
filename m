Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B72B36AB74
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773865494; cv=none; b=WEa5j/EoY9G4uPRQ5F3z9qClXlkrUEf0WT0FCkOCdC6ZDGYKTq34HaRBFIwv9eVCPUrfo7lVHqO8D12pu8QZXHrWmgdyyHuJz1fJoz1aCOFQQF7heGjNVp3SnhHo0KQ6nHnyFi2dWMV9nWJIv3wT5JHRCHwaYj4O93NIdUZYP8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773865494; c=relaxed/simple;
	bh=npqegQJwEWLuN0Nsgg9OM9GH/iLxXdhyZBd89xEWODU=;
	h=To:Subject:From:Message-Id:Date; b=XvYul5jBPlCf2/+XwYM7dp9Pyk7TeX/D3ZdjRngCK4wHU7bYyhrlP9sNoLmZYNOe/rfkNnfOmda6JIvaM0xWb8FQ1Y/5bh+VYqgvbbLIogx2dvGOSxFEGN2z8zmFmimZNJAwuqw7pvPWHnt1/7ZqX7nAh1RwEzVkR+PNKU0w6p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUeiP2ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUeiP2ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB3AC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773865493;
	bh=npqegQJwEWLuN0Nsgg9OM9GH/iLxXdhyZBd89xEWODU=;
	h=To:Subject:From:Date:From;
	b=rUeiP2ibLVrcwWRYgT+PULJ+MV7IjsT3oSqzFysL//ekU2AT/qYHJgsOWHcOmbh3g
	 W9npxroY8p5UGFuz948Goq8ssFjHsKJAg6q5yO8Y9WZxJbgk8+437QbIX2mQWa5mPc
	 eKGZPTWsrD2YTtTn/n0aSPf1ehYL5rDUtgVrF/J5OnovgyYfevdJqafyqZIRhFqJwA
	 31GUpTjv4mTuoaWMJvzBRCpKcLMixApRFM99LAtARHQdUT1AgHkQO0M7mzlpjUvFyG
	 sNXS3Hy/pT+EGquP6cZaUHPioXe6V1UhJC8bbqaZdb8y2788/PJrorOYSlPYon9mmd
	 anCXtc+0gjWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DAD1077618
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386549361.15001.962745958031106726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0961b0aab5f08f46dfc2921453030db80f75f81a01285c71a969db72725d56e
Date: Wed, 18 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773865493
