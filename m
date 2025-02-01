Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B67E1C5D71
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738430754; cv=none; b=lOX7G8PgOgRPrYIWiXMy6iQw43/CaXYJS7jyX6mn3rW5KPwO+K9qd2CUHsmzjgS2lgRARUheOowmr4JOjr59cYbNfYwDt3a1pVDvgfIv98Inyh6IU9ZhDEHM+RrUBB492PmGlbzLwiTBL2xSxTSfcrMBp0K7IaJjIj9zBw8sKlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738430754; c=relaxed/simple;
	bh=/pEf+PtgfHA2IVmLpriMjJ/kML+NOSZBO24GlJZ+iCA=;
	h=To:Subject:From:Message-Id:Date; b=BbSETZwUDGc72X3IaxfstW3T548kqKg6KZYhACxmsWPcVsSduzJ1hv1KbKqttuxc19MR1iTp8ElrLCePa+lFGlMK4qSyWQyaDvEBGlHUBwY/q7AKgXftwLv1iFgF4Jz/ybqbPNofxkDLDNeAW2rn605z6nauRzTnfAZgnr0EFqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0u4/EGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0u4/EGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4E9C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738430753;
	bh=/pEf+PtgfHA2IVmLpriMjJ/kML+NOSZBO24GlJZ+iCA=;
	h=To:Subject:From:Date:From;
	b=e0u4/EGkryJwbsabGzWCYUHu0UroX7i7TwnZMu/wo6eFr+WE+6tIqzE0RHisefP+i
	 v+Weku0e1Ers9elkPHXH6a6JOE6e2DFiKF0c+u+oDjVdRuGy1PgRvXQzVbOKfCHK2f
	 csxzF52yTW3Rkce9UJ+aA4Xu1zuW5ZCqa+NVwIr1YmkB/nfYhMtbG5v/AZ7ynyje8F
	 IsUWZha9uc4RSajjKdbSH0XmPn+3TnRFpt9PT+0I6WSQ1zZS6MqgJFNkMirUKBEmnt
	 Ha0i5Hi2bIrFjowI++W2798bux5ZSKm1JqOLntIIiSzz0/YT1KVIozCCMduw5buFxe
	 CSscfDHcBqH3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B07CC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843075362.16472.12308226374782801472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f30cd8475388d1458b8bddb175a2d066fd45f536abe1d3c953d6c9dd91b314
Date: Sat, 01 Feb 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738430753
