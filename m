Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0497B288AE
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOwTveA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9C3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702730296;
	bh=AkR0dZcxV67561r4uqcHnsoY4UftMAXcAQ0WW92mpQ4=;
	h=To:Subject:From:Date:From;
	b=LOwTveA+yRUXp6OYv4oINaXYe8PQ7lz2B7B6Hw76Vx4W7bzlVtTLFC8u1oeh1HM7m
	 P01BqYv1GuSv2+dUM5b7EhQgo1Csp2LEFH7U700mRyGvlFcuYMe1NIPlst0ZW4XV0H
	 tkdyigFwoUv8T9qPj+Y5TvtRksXHp95aw2tB1BZPNZpnplPIoKOk4lon7rhreQ3TZl
	 qytIYSDZOizVCnEkSXcnttilEJ/DB2snXBOzqtgi7IyBlrSTqUxrB2vvaGrjtQUU4f
	 di4fvlj2eI1q0WqszINAm0PO/1WwmWhUFwmXUB0Oez72oCskk0GGZUKYhziF/qUSaw
	 hJZSRYwDRkiPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E54C46CA2
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170273029637.31965.2723452196554548837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9118d37e91f9447d12db8968b3ea299592e3f1946a007ce3a65a92208cb590ed
Date: Sat, 16 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702730296
