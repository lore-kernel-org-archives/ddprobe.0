Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D60638C405
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775635534; cv=none; b=b2llowUm5AbpUQHyZ7U7F+goQcOdRDZPnFc80tfm5J/PtVsWzaWu+h7xMtyQJY/kdOr8Qlw0iPfz/r/b+HmeoxiN6gYunmpFAnkzfJrvz8WZ0M7hAEKGj3Y8YcIsUmvhZjOwavhp0FIpe7jSdR5ZfoVcqd/4MS6O9k3GTLUMnHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775635534; c=relaxed/simple;
	bh=1kOG1UnRwAuK2uobl9I9IlukQC2rLc5Z2/9/uUctCxY=;
	h=To:Subject:From:Message-Id:Date; b=cT0dInxZvJa3kqT0Ub3ldw1KA8NNEkjgx39MMMSuJK1XwGCwdfO3dYK37Al5wIfTYgULqdhunBSFOmLbV2yKLx+ZCCv7jBR+KCqClk8ZHGAR+UnBZdNIJ6PZyuUcY2Ncaynbu99j1VZh3RYyQVrgkC3r7DoCVizQwUV/k//jo8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us62Y/jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us62Y/jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59EFC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775635533;
	bh=1kOG1UnRwAuK2uobl9I9IlukQC2rLc5Z2/9/uUctCxY=;
	h=To:Subject:From:Date:From;
	b=Us62Y/jxN6uV0fAkRrPLrH6O0yWfTT/Sy+fyAnDYYlL6gQkPgE3h9tmUjX+IYy59T
	 P1c6/AmBo3NpC8SwG5qI0y/sewCVquYAZUXLFJIwahCnMW4wiusefVmXzqZhPmf41t
	 hDSkpKGqv3PU8e9hxOnbelQgs8Hm0xKogxw3HW8PnMG+L5Lsooaz+8RlBRnR17WKBQ
	 6QHjmx/EsEKZTkhXfqX5ILSJfNk6mnJ32lCTkzQm/R5i5v5wKVnocGd/Ig8jYXp6eH
	 kRvopwaI+p1oreCsx1FBZmr8UBzER5MzaAMjb8veAm1F4GVkqZmQ0F21rSin0ZxtgB
	 Vy5KjCIn6Rwzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B6DFD5F87
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563553374.3672.4082528678563735475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99359ec5f715fcfc0aa671c98999709e22fda50f5fca61e86edd868d60477e2e
Date: Wed, 08 Apr 2026 08:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775635533
