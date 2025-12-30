Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51E5EEBB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767124433; cv=none; b=DA88AkrhZ34vnrhm0TDHCt0v0pnY9HvqBCJwvKU1vfubaJ/pk80kcrRpjfeRsejxgRYQvjCqNlgKc2e4lb1m5bH6nNV3Af+uJLq56vOlm90EeTSaMZ59JyGTcE+NxCkzYPD83/rlb1cN5/oBaQbq6DZrg2YKXwxFa/i2MnO1d0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767124433; c=relaxed/simple;
	bh=wqzSIn0H6HzbaLZITiQBIu1oXfRu8+EFZYKFWhdmhGE=;
	h=To:Subject:From:Message-Id:Date; b=QmYT4bVZgtPI+RHkr0hrbj8A6ssVIjddAfw1qbKrR2dMroTdR3u5svI1WyUxVdqjifKntRH0x3pHS3F8WBIo7i2jDqZiDBiubU6W7r/dWYB5TZM+46h7xaN9S2lO340tKrdD5ao6YLgFZw2lv+Gg+5RctPdq8XZ4LCdxq6eJJ0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hS6kb+R8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hS6kb+R8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A593BC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767124433;
	bh=wqzSIn0H6HzbaLZITiQBIu1oXfRu8+EFZYKFWhdmhGE=;
	h=To:Subject:From:Date:From;
	b=hS6kb+R8iSfLCxXGnWzFrM4nbGD+D/0mJA3mZAX/+30NHN4POLRvS+rabnmv4n/DO
	 Fn0pLy5eG3ER4U7QLXrOW7kcEpaYhWVXtg5SqYv/Xph6NPUErtNVxVztEJxCnb+gSi
	 0oSX8fZ2cawCORYY8vUizVdvLDJWPP0apsw5uF5KqTNicmi0o1UHB6s2UL74/+UxtN
	 FW63u41wjSJOwoOf51i5pupe5WekKnYmFwP6hSjqkZ/HF0ItgLR4on+O1lg+2byl0E
	 mvB5BKNKyblUKBOGc68SHlEnbboSXLaMAaOzuUSol2sMNQvWa6RSSPZccud7Sf9hJF
	 h2cJBNOrNGoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9535EEE4998
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712443358.17695.7910774218107050004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f427aa468572c9375558c9e9ad9ee74f630183b50c68eeccdc29eb0e57a24687
Date: Tue, 30 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767124433
