Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCFA364E9F
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773769494; cv=none; b=p0P9VaIwMq+mBshsjSY+QjFVNBBn8DRFFJD4XJuorJVnIuYu+C72vP/5CI/Q8/nf/PupVSSjLwveW+Q7iXPjZ78SlxY6BvczelY1zEbtdIeBBTNLQtua4Ipjj2tS1MPAXD5WJbptUAP5HC74ARaisBEGB3wJCvyCdarUxZJr7Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773769494; c=relaxed/simple;
	bh=IATGPsug+8hqXoIrfdtl4DkYXh3jYO5w6VckvJbarxk=;
	h=To:Subject:From:Message-Id:Date; b=SKVqAKT+muTuRDPxwLKJM4H5P9h8s+hb8gez/Hdj9ORFQ+3qpgFIe/M5qbbQPsAe3OrwbhLgFKEZXPG7s56HJUgy4wTDTLf/L8Gj1tIukA8Hon30eMRlGrcjHwCx4Hb9Tv1etJZSialt3tcSuUygBTg3UsPTD/2Hm8VE7weDNi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWJfT7Gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWJfT7Gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E72FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773769493;
	bh=IATGPsug+8hqXoIrfdtl4DkYXh3jYO5w6VckvJbarxk=;
	h=To:Subject:From:Date:From;
	b=rWJfT7GgbNGiFcAzSb2UsLxBb/kDNkztPcJN6dPM/6Tdhde0/gakYb4tPBa7NiMvt
	 OZ6eNkO4WOHXaxgea0Y3TZ6i1Fak7g3kgQbDkVc3c3/5YiRLpfdKOxUhDP6f5f6d+q
	 tAtKTaXQIO382d/ry49DBhkNCAta8YCpYTrOWf5zSmIdP7Y3eCZdDMq/ZPOrImTxjY
	 5hygQ6k/VeWE3YpaifEF/hobmG3nzZhbTVKlmkvq8L2kyrE8F++r8hps5nX2ZbypDT
	 iZ09ZpT9931GRiP6qN+XY6QlRzlPIiUyrzDgJI08Y6a3RZOEwLidQMQxHsi7LWvGEb
	 YWkyJvlFU4x3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009AFED9FD
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376949358.9217.95628139921687660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6840ef46a5b2ff6f671125686f9f99da70195a263ae609eb43010a1fb58fe048
Date: Tue, 17 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773769493
