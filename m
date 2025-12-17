Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E2221CC7B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766013833; cv=none; b=qSeRfA17Gxl7R5VwB8qqtQDGVGczJZgYMO35mzzAI677efpVuS3m413VkZ4i7874QNTzKg7MwFXXiI4Dlep/g/OD7pooUUaO2AoKJcHhbkVWd4CXP0bmdfcZrvrcjp06mWymkGCgZkSLlwX5ztZIIU2jKE+grcv9bRuIb2SjMf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766013833; c=relaxed/simple;
	bh=CjLiSJf3CKgEWb8vZBtiMl69bKcUzIkKd2qgx9gzTHE=;
	h=To:Subject:From:Message-Id:Date; b=q/thdKjukMTd9ssSksq2FVWVYgWJ1ZBj6cQPF0SzXXorxQkPU8mdvBT5imv/3B1gHNl5YV1LQKbU3JT7yFuqXpqdwyabihUg1wyK2Q9FLlHHoFRMQevrEGX571HYGeTXlAx7DpheCWBQBm/7CDRe2p5oQIS6QfbrQKupR1XeMUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7Pc7PQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7Pc7PQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06A6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766013833;
	bh=CjLiSJf3CKgEWb8vZBtiMl69bKcUzIkKd2qgx9gzTHE=;
	h=To:Subject:From:Date:From;
	b=S7Pc7PQEb/gKlub5zpEseK46ASyyH/cuStTJ6n56fIXgAeRiLpaT7w/PqsQe+dxyH
	 9Ye0AMeEwbkhriypMejDIMSCKee/Di+8icwZ4pV6GcPUR6thm5hkuSrmefY8SzY1lD
	 LpHUlaj8gJlW/7fKKlMBUORSfnBIKru7ZPi5S7zcTUlGtOZx/gVZYkVmoEdC0oTYLQ
	 Pd0TLpB5V17cR5DH9/Ihxm2G6W62kcYRKubd2N/PLiskeCKX+QIkxHYwkIlIrYiTy5
	 tiKBt+OlAP3Q3bu4LXxUBIHEKoEdPdhBrtk9o+ardT6Inq9odprukDMQKIlDxbsvcv
	 QT5rFRGMuuj4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84FD65C63
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601383357.29581.15870711614097155653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a79b2cc7d68ee017d1e18f3660e1c232a5693c1fe424c9cd1ca4f6c7dc764d8
Date: Wed, 17 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766013833
