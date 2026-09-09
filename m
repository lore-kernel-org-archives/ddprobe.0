Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE862D2381
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788917434; cv=none; b=CfwJV6ZzBkYpqmTxZvEt1rJEgjaEm7BRBqW7jtFDaSUhW2X8ctHLbJk1+FsfvKO8rldHl8X2altYM7veYJ897axznrOkvs4fhnlMjrP7GWX47msv1YfGsEpJaBEn0+kl+FCIWVZmMQ6qSt4kCixvdb0OhxzJGvo+SM6xQB74G/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788917434; c=relaxed/simple;
	bh=qb9NsC2VGVnRXB5N2nM3ZV3K02mEtcV3UjDYFud3giM=;
	h=To:Subject:From:Message-Id:Date; b=Re7TeQiQjj7AeXXpD+dd0j6693zMDmuAHt9w4JlVRCbYLLVdro5Wy/fHZa+iR2bHhI7xQh0m9XfXBY7sVBUuLPV3N7J+YhfiBijRFt9h+hX9arVq9bto063EZ6WxWnsW6wADfEp4QbixorzQcRoSgE9pchxo8wF8B3/jhBlgFwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuT4NTx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuT4NTx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF7CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788917433;
	bh=qb9NsC2VGVnRXB5N2nM3ZV3K02mEtcV3UjDYFud3giM=;
	h=To:Subject:From:Date:From;
	b=tuT4NTx060SghBKNoFN80a1kkJ+LnDvw0xc7BBwMDharXxyy6mS5hoinNTwlVVQvu
	 NAX5v1NPXjMXvtl5fnIaXDBkCNi+7nA5LhZNayz6M/FUqJxp+SSvE37kng6TBX7KJ9
	 K5t7G+RGzXO79cxcLW4KSUpOP6OCzwlHpcY0smfXC+4pVL7IqTZMr6LQkXgqBW2CCe
	 xmWoGC7/BXXF2CkmNv6fIYJL0gElorXWmfQfFSFanOz599X7gOMOtGYDv+cNP/879I
	 lptONHmHb2UQoufC1PQldohm6/r3Eyo5LL/7+saWND6+44H1K/kk1UxEqqUCe8G50t
	 wfKO6zdwr8kFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACDDC79F82
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891743369.12691.8563046092443200321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72a95251526dec00d1e237d83396bf5d10940413799cdc23c73b4b40590f489
Date: Wed, 09 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788917433
