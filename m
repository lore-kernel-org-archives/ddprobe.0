Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF74178372
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767540834; cv=none; b=WJJjraUo3kSCzlJrRKSobX/pb6g+ksz0wuzvnMM7G9NVhZxbWlHDDPI3VaMrr44aqyWv/rltgOcQVDuTXqN4iyu4ziSs9t0fq4vCtFur2RNaYo/UpGlzxFNzhpXIuh6D85ay6LCF8e7hRZOD3RdmHFu5TX/8Mi6FfThlVY2k3S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767540834; c=relaxed/simple;
	bh=3t+uZYjaNg1+h9Qo/Ru8FeQXuLPWk8qyPd0XTbNlcUE=;
	h=To:Subject:From:Message-Id:Date; b=EJ6AoXecg49wqkhRYpfmyF2tcrs+lUwS6fkleRCGegUb24OlSf8PEp0hcw2HX6KssUKUAZtx2BcFv3vRG20cYY0PYhZ4QTxzo7gH4L7zEOcxMr9OB0HhGQf6AVXidsG4fdrS3J5HrcwgB+gVqwyvxVNWP4mIGfWYOkMxYJ/hMZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsLOglc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsLOglc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6642C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767540833;
	bh=3t+uZYjaNg1+h9Qo/Ru8FeQXuLPWk8qyPd0XTbNlcUE=;
	h=To:Subject:From:Date:From;
	b=YsLOglc8rpjaCQHchTz+8h2Zjc2lrAdrJxNmlhqggYo6FPA9WKeuad6MLVSGnEQQF
	 c6oQW5F6av+owUg5OJ+3mQW0ZlXSAB+2n5rB8UTbA2YaG0pY27ae+wlJ3maJtE1bkJ
	 FPZxtL8uvHeXWDKcYQtKIBeXsmcR/ceXENyfmwuwLMq225My0iEKVIt1sS9N3oGnc2
	 MQ466E6Z5xwNCN8FZ1Fbu0qqz8ICuUeoFnTpewSW+dgPx2XkmQ4Qe2zIIMalxHbKNJ
	 dwLLCH+wa0ncy/SgCBiJbbSy524SOQSrs7jERNphvRXrt3xcyoSACVH+r2vFVG2Nd9
	 wmUAmxZX/NZpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542EC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754083357.18378.13860452153494007493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8438e432ea6a81ae86e1f5d5c32bff7eb60db29b2bae9b929f5cca3c4bf80dc
Date: Sun, 04 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767540833
