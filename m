Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61FB55E72
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707834497; cv=none; b=dE3MwRy52oxWjz8dhJf9HdB2uil/maLWpFp57NCYaJfHuqUYPiJQRw3CmnjBsH9srLQ/t32Qx7eXhgciRceS2UAh4IAlmkYGVv6IrIIxXnfjSgTbbKUwM0d+QSnmmOW3rl504h7iUtjtrrwBEjJARrCE1J0Jc8Ki33Xa1cRo0TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707834497; c=relaxed/simple;
	bh=roqY+i0axZy4UZTvkLPglSD+dtmw22vzm8maOvv7ZmU=;
	h=To:Subject:From:Message-Id:Date; b=e7ymc+3IfQo4mNBdd3mxjyw7l2MmLCE/GN7vj1tLzbfCAyDKgHg0Ksiw7M4StKG06QtodrScbvxbYGBiGaEvzA52EFV5BRv9cWxVDPPA/85Qj3HXofBmbU4YfCAwJRZlqgc8ympgIxQ2Yz3jEPCvj+tUB4YgNkcIWi+XKNLy1pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/TN95M5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/TN95M5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E3FC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707834496;
	bh=roqY+i0axZy4UZTvkLPglSD+dtmw22vzm8maOvv7ZmU=;
	h=To:Subject:From:Date:From;
	b=Z/TN95M5NdKj/FCYRL4Hd9R39fjX7sdqckczbI909s1SIgZlWxnA54zJDHG0c3ePi
	 jJ3vC7Ks2MAt5dhVguWK2meEmWl2DwlfzbzNBddD8tkw5tppaJzLV8RbiCxF97RPaL
	 xaDj6hvRrdne978sXvuGiY4qDSmtzGc6xNd+Y8nMJSO0zU6+6c/CD+o2iw+KoZS480
	 Ckv6klYVW+gMaHsqibAkwp0qVZKbdqzPfhsuvj/Zf+QMTi2HRu1F5cAXrF6rW451X/
	 mEva6YEUMI2afW801yxfxks09Ys0J2L312PihFhgTIzByWYxXa0yfGELQ1+QVdXWv7
	 rt+sTCciC+QZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B545C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170783449636.31464.14168619695083462782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0590279f1dfce7a1f0de7791656adaedfe8ee7f80a59e73bd70f8d8cb4e056b
Date: Tue, 13 Feb 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707834496
