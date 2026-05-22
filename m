Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C86C368277
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779487954; cv=none; b=P1UHIboyVKVU9irdB5zDnBJAfK1QvoMDmySekGqDQ4hysZ/v56m+Oit43vlgJjoZhCkWgii7LXkqOJlcjBL9o3U5X/gInaqoU5Wt/trAvvyOUdNlxVKvtgv+fj7YVY28jyq/B56ARpjkl6ArPnnxieNH9K96GGssMmDci0KBZ5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779487954; c=relaxed/simple;
	bh=jCn4gR8MM7IrP1vyw7AtwmLJ9ogKHXZW3g+/Vc0gX/c=;
	h=To:Subject:From:Message-Id:Date; b=EOg7tI10x8vP8Hl1G2DjMn/e6qIpyMgCTVuZxDWvCiO6WMsqUObR/cSa3yYMHAa3Tz4gg9xHFjvnSziCE0s/qdAkKkDSbU4yw6sFVmeFuDIFk9oTys35wn7s/oT3VUuoA+fqbT/N2pfuUgDmd6bc1eRvIZ27UpMrGk9Nkt1SDwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSd1K8RH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSd1K8RH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7DEC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779487953;
	bh=jCn4gR8MM7IrP1vyw7AtwmLJ9ogKHXZW3g+/Vc0gX/c=;
	h=To:Subject:From:Date:From;
	b=rSd1K8RHpuwVGSetqAmvA1fqVmwzLbaCHXbHj52kfZv3BmtrGkY0z5j9schvETufz
	 Kw1ywtCnSN3V+bo3Htc6vTV85kjjpNAaoAp4w3UuoYiqeBN8FjWkLsQXptFOlhwx1I
	 QOmXy2BlBcraSbou6JLi4qgma5kEOGrkA/LNrATp0OKoiRnGluwOXu/KvynZBr2z0Q
	 rYRwyjBSYCexvqr3COYB89T3jBtskfOmyBiNsYJunEYChZKwOxXRSWzaPDk2ZQEqBY
	 8gh/mZ8sYJnYOtYV3eVmC7HTjCsSEDxwXfPspy2TnSpQv+qu6jKt7eOTJhiU//qm2K
	 CJt/UZKdaFS7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB3FCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 22:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948795370.19280.4732668123646735246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a22319ddeb73bf508629f378fa732e2ae12cd7669a57e855deed0e94f415c4
Date: Fri, 22 May 2026 22:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779487953
