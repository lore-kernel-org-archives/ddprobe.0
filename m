Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FADB2E414
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783957714; cv=none; b=k7KLVHhgAfqB2d2JNsx6MiIB+MWPB68+RcniWeOxE/ppd93NqwtilTLYDYA7hbxychwuBBcafcVp1/7taC5vzn9KOoCJVfMyikL32zVUDJF/EGpgyxvJDEmTKdNy2CSOBr/EKn/0w0WIeWlGQTXueiBmugWMKwrMJ/ui1Z2pSL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783957714; c=relaxed/simple;
	bh=jK/QC8t+m1XlLovK6tdn6AiPdbLFm2N3NL0N5BAHZ5s=;
	h=To:Subject:From:Message-Id:Date; b=ukSw0r5Y9mXpQeiysrH5t3wDQIDc1+aVglXro5Jn2X/hmSfpY3PGNPHBmuebvNF2FsATUqAebyDH3ERRRoQBzYOeIwWcmC/ZAUtHRlrjwrUWuSyrDnNlHGSteoUnqiM8IBH9VUzLi8u/PqzTI3/Gd9ZNr+94RsGRTknMTXzSdkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEfXL+CC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEfXL+CC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22C2C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783957713;
	bh=jK/QC8t+m1XlLovK6tdn6AiPdbLFm2N3NL0N5BAHZ5s=;
	h=To:Subject:From:Date:From;
	b=BEfXL+CCz3kLAN5hfn6/wDgeOue6YoQpzAQgpfhmK2I/2TEUMB3IuzREsehnhQvha
	 cUYsFKy5qaDaYCUjXaZifDk/ymwyuNluqiX4w/FLZxWbnlY7+ERSCgcWUr2XUZwtxL
	 b5PiAtcPHXO/33PkGyrLSP9zGWmaRdWhCCl6N1PG+haZYRlXOzSYHOrIhnWgPQor7I
	 pSDiX6N//xQRTYYps/E16Ys6Cmee7CLr0ck3LEf1n+491uJfTFOHAB14dNVpQrvOkG
	 LQnb2Hp6ohbLbodkJ6Bp1Ye5y0aXc9YlF/lP3vCfJQFbwHNjI2qwVQSgWOGb+wXdnq
	 SJuXsUwHl77yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6A8C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395771368.30081.4781835596465404796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0bc174503a0f0e7f6b3d958b6b727ed68070e75a102343299ddb608ab4fa63
Date: Mon, 13 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783957713
