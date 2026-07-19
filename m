Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C142CCB9
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784491714; cv=none; b=E+Z7ayqS+VwbZgxMy6IgC5kYrZgleVjJT9TH1hzJiS+ZVSxBd0mJM32tFjgCzTQDaoKPhviWE5zA09EQmY0Qz3RUglr/YHK/U0ipZDzvyGpbKWCiXdR0ZCMShKSEqOjdSHOSb74ioTezZagV0d7W7NHdU4PrjvOu9P+Gk7f78WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784491714; c=relaxed/simple;
	bh=aERiiKyyRIQGQpZmgNZYTaAvt0a4wu6o63UklQWt+EI=;
	h=To:Subject:From:Message-Id:Date; b=owGjsn3CYNOqoJ/7yvpRjqvMf50jb8P+sV5iRszuWB+YVSVbhFeiLh3xsETfH5DoR711flCF8HBiXT0igS2iMLJuQYTXz6EAcpoYjNiPE/TRl4zT5kfdov3cUJnEwNzYcUgN2UBTW7Vx71HjMezAZmj/pLvMOoM0XxHnSpqA0CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWtW7Zym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWtW7Zym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BBBC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784491713;
	bh=aERiiKyyRIQGQpZmgNZYTaAvt0a4wu6o63UklQWt+EI=;
	h=To:Subject:From:Date:From;
	b=rWtW7Zym5KKhWFmToqGC5ru9ec9tbcm+JeAWYQumUtj0ACROLDB75NGUVb1quCfKQ
	 y6F4B3dC3hQBJlUSFlsGbtO+SzPtyvAvqMY5wPaIvO042aor43ErQN3CPK00L1dVFE
	 XfNpxTKNNsukCNnmon/byqeOrdmswPFCL2Wqs2RilqJKaWkb90VXgv4aq5i9tO0KCP
	 5Fx3r+sNLMpS9F73qsNt6gp38CLlAGwwhrMjq8wilEAypNz3JVGi3y/JeTpZIYsPLv
	 iY/QrUQtZTu8Cn2AsttQxX6+l2rxDTHHkcMtHa0s1rWRrjb440I+GHInS389KOoLdL
	 T0UgZ+GXs+W6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDE8C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449171368.17679.3646646196033586230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5fee9c603b9600850df95a529d574f2e4605ebeff92c68acbd85a5cc0d0222b
Date: Sun, 19 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784491713
