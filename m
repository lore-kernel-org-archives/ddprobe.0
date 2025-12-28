Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF0F1F4C8E
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766882634; cv=none; b=H3Cw6wBM1ccv6qiMCxhnWC6AQCiGu6/CpwwOd48r80u2UXWv4ukE1x4YEyw1bUXX73qhond0r7Al+9n3uPrJNeDXe/U5YZlYH7l9ydzg6eZGMxQu98bJFznb/r7g9XMYhYe4MNiGqJUBHL6gsHA0B76Wdyg1eguxNo5AaZJlmx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766882634; c=relaxed/simple;
	bh=QC+w8tgAc+68xVKdB6dW7Z9H1seio+xqKndawO1vgyI=;
	h=To:Subject:From:Message-Id:Date; b=SMV4qrLLsbbANVINYj3v/N/9qLmKuJp0+mSOMgUh+R3KGIBSlU7O0d9SBUu3Lhh1S9S00bsgEo5xIT1SJePaX/LqOQZJ5Yhh0K6Ua9hbVriKHMG/uaAmbYDRupzDLYUWRl5q+22r2wG7SauuZuftY6PK/C7dU0PxofxDoY+V4fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbC0k6E6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbC0k6E6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F07FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766882633;
	bh=QC+w8tgAc+68xVKdB6dW7Z9H1seio+xqKndawO1vgyI=;
	h=To:Subject:From:Date:From;
	b=FbC0k6E6AmnR/6+VB9HYkQeQh9dOgis/sje4AN7UWnKhUO05urh+GwdJ5brnSxdlR
	 BtG7YyDjfsNmzE/yyMtfzsq9KZAVZ9csxK9p5PdHlfzVQ4uxjhoyESymVAXbTS4t5W
	 ytQrCinH2Ya19qk1wJlLrzKGB6YIxm6U8TMyQO1I8vWuCDQVaRqVtFkIGHE+rOHbut
	 RVeOQKB1T48LBtvgTzxwdDfIk8M/Fx/ctWKjqooped2z6CLyzsDetC3KIC+MS84xXP
	 FrVcVW7racYJKp4ubpHpN42FMShAjq/u01b8f1+fmJYSKnNNt1qdhRPZRZIzYdeak7
	 vRuk4KpihhCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BEE92724
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688263358.6888.14354060232416871459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b419e315c0b99487749f915f84a0b628831670b7612cb80f8722ce7619bc465
Date: Sun, 28 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766882633
