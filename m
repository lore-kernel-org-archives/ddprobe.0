Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206AEEEDE
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754813394; cv=none; b=h3IOnAm2562tNIgEF5PtmaBAbCkdMmejdX0F92rE2B8/UZXv/SCrj8LfZVZ8Tt4YMZ4giLOlRtKkktLsd7J4PWPyjR2shZ5iToj0eXgPlJSUDVE/jEtc+aRVCXqBgP1hKsO9bZw7tjsG0tZGG9JhbvMvoQ8MsvG8QzEPrKaV5bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754813394; c=relaxed/simple;
	bh=uNyFJyN70ue/uqv/TKv017sOMrSIQDLMh3YeVQucz7Y=;
	h=To:Subject:From:Message-Id:Date; b=fQYe2WDv7tZSPv+CbC5gZA7tz8TDadaZFQuMPKiIbzbJ+ERpukb5XOD9wg9LEgl7RtY59+OGPJXrpIyPacNs5gKTWlgWGEkfcOXCv+C/JN6KYdNbqjduK3k0GDuWpa8pQuPYBthUODa1PXXnAHqujxoaLnnixdvsauxRf1EvSjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMof3ZiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMof3ZiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754813393;
	bh=uNyFJyN70ue/uqv/TKv017sOMrSIQDLMh3YeVQucz7Y=;
	h=To:Subject:From:Date:From;
	b=NMof3ZiJP7taW39ejvnkAO/lk7/g6a7bjuMy+kjdjnlDoKOfKrPy6b5Sw8fuim/EO
	 HOT0jjW+xBeEvk1w8fuC9OMJSps45JEt8a3+7Qrhtw7mOK9VgR9mY00Fxw8WPPr4IW
	 mGxuH9o4sFJ+XgAVZfXI1ckw1OHVqPP5bmU6Ubu+SzgAho+Mnux5fc5/furYb+egGg
	 kw3ny9QdH0VFyUTm8gFKuxswVdL/cAqHNuvk3oQzq/yQE6ZQiWxObkx6lPKHV6FFsr
	 M1DO2/5Zw92vUg1z9CH/H1tf1xO9Wl21RcSIeOdNhbT6EXu929lmjy4Nedu6OhepyG
	 XD+tp+96Vgnsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940ADC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481339357.9204.6996370858737386878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8400bb72ec18cc1c67f4853cde9e01621e869eacd17829fb62388837316ac7d1
Date: Sun, 10 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754813393
