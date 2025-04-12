Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465B514A62A
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744436995; cv=none; b=PGHBxT8GU9+y9nhPKNtZB+K5U/z5t4zKzWhqkbKqq9Yl4PgcLwLBymcNwXRnVCQeWge4zKvSWGrFqjujUCenFbizBgKh0WMm1nwVRHYTnvvATV2wFq0toVia/AOlTVyeRIlyq+lv0n+DBnv9DtXTWetgRyaXHzj3opwXWaYymEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744436995; c=relaxed/simple;
	bh=J/NIqZE/oXSOooDVwS7tXWM1nq5Yt2xosz1DeeuRYxE=;
	h=To:Subject:From:Message-Id:Date; b=Cxx3LQbmASgahEtKRPEZSqForJeag74ogwSJUuRqeis/Yze/TGz/H9gKXZE+g7POmOt6HZfL44gOE5qyMoGlFwPEHrMy/DUijXQJeqsWzvRkwIYdcNhWkzofy0FJJzvJv1MgWSi5gYefrRTsSLz3C1404H2JuU2q+qgo5ZiORrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXII61A+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXII61A+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91FFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744436993;
	bh=J/NIqZE/oXSOooDVwS7tXWM1nq5Yt2xosz1DeeuRYxE=;
	h=To:Subject:From:Date:From;
	b=OXII61A+38fOxob9hGJWpNW5tsAnXRBA51RfcEFuyBfYvS7c4z1Tw9FCDkgGCdx4N
	 0xWuTnKUH/xPaV8L/nS2vjbTmj9+5coCDf8PpGerw2rmFMF1oWO/TAWVvtnZz7M2w4
	 YSJN9r7bDnrBSGo94ZkpsjgCIKjCs1jYl6OfDaure5nZ5qafTxpoHk7qnn4LniPL77
	 yX7ZaEEi6FbiB6aDf7cttzbZbOZgqyn+Pt2XwoU10lWq5V+s2HNaPvyOhSBojgibw5
	 VfTOi78y8G3j7Q+JI4w6ODDheAc3bPdDVxEZ3Ll40peIuj/Fs4Xjoy7D9CgzyfunPa
	 /cP6Se149fPjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BD4C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443699363.15124.2088843887653520282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b121b7cd328786cd20ee93db32da84f2c55c85f8f11e9b656b7e8e9b813a8cfa
Date: Sat, 12 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744436993
