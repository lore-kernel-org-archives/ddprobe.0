Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1670F21579F
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749388794; cv=none; b=UvIXc/vGxnoKS+j5ESJLF2r1PqRCCqEhnztE7vSlGQVVAz1kNZRlSX/LWTqCftlv+nFOfBlxgFZp8a8a2y2Fpd1OX0M87a5gZksQgMeR05+vOpTUktLICTGi1eEgkBG8w+vFRVNTnFe/u//VGgwvkkKZv3FLzJRt25CO26zzOao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749388794; c=relaxed/simple;
	bh=QlmUtVDNlfQUpUmeGCRc+KCYv4v3HATRQoOrCHIeGh0=;
	h=To:Subject:From:Message-Id:Date; b=LReyT7Yd6mM0uX7wXQQHgfvzUI5VCTx53NI/ycHxwrGYKIRxRdjCqVWmDrWeZ4ldByjEiTwMSxOTIss03o8G8frk3KEBfYj1V3D/Zg2bFtwzSlJfTZ2f/zpgnOHFx6Y3eG76pZVnDoGylOM2oHBOK3E2m4OtlN7tGVXc4O42bfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2oLHT9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2oLHT9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4859C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749388793;
	bh=QlmUtVDNlfQUpUmeGCRc+KCYv4v3HATRQoOrCHIeGh0=;
	h=To:Subject:From:Date:From;
	b=A2oLHT9PrXqVYiiGFRjdUVYgtkl2J1YkqSuEgy7td2EEkIowcSyX5N0ksBZ7exuHw
	 7Wp5R4tHbcPa+bM9jPUTzr8njzX3nHizm4LDvrxmnU9WoJ/MUVO9jYlwBZZBSk28vb
	 clr6wndeo6mIiaPjMlbbSJP9p2bjYejdJhzhjX5snbzyka4537ZDD98bYGbHpNdvVS
	 6tZqDgfi2H3JYc+xd6K+25LrnQGZ0ittpzL1Z8p9pS/kNHcbIf5MADjcd4D9R5Gt//
	 b/vIJ6kyifSGKBoOjjYvfypqgQdcZpyvfMQsVaKZleUASvgRHhseRJjSLpFpIgt2YF
	 9kHmVKbLQIoHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F5C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938879357.1986.17649364570385661072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e640ddbcb91ededba6c8d400f16fd1ef98523480ecb626c636e754c8124297a0
Date: Sun, 08 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749388793
