Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF0E1F2374
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737466554; cv=none; b=a8jotguq9xTkT3E/6wdDZVvy2/la6mkM0x8o6d7gRxf/9jY9YuELrxHQ8KM5HlSuSQpIIup/QlgeBF3uuCMctAZn+Uf8ybGZ2WNl+nBfHeAFc4qVSlalrhZQCbEEYF9owswbyRHSGXnSWwpzwOfuUK4rJTbWwqJM9TTxciSv6GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737466554; c=relaxed/simple;
	bh=PnoviwdLjgQZEcMmbAjb2hr375tHqUnJ8YjVj7b/p+k=;
	h=To:Subject:From:Message-Id:Date; b=C1eyk0y3Z3s6e0sPquVgl+wCfxJK2a3ALoVUqi6R8v36fsaBbJsInZE4IMIZpdKKyT5cewARiUQJ4wXDlfAusfNwOS8IBBhWMBkNFTCrw9GL0pN2114C0Ps3h3c3eVAr4QygHLN36moqFq3Hsop4b9uE5FNkCihT0Wqpbw1I/Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmZI/8mB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmZI/8mB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF53C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737466553;
	bh=PnoviwdLjgQZEcMmbAjb2hr375tHqUnJ8YjVj7b/p+k=;
	h=To:Subject:From:Date:From;
	b=FmZI/8mB26Ru0vGiCvmzXz850waeWkRLFECMuZhHne5PSapScjJTmnGIHJceVJaQN
	 7fSJYAhO50OtD4t0UCO7zX4XPMdXXnBXnb/zhd9EDjz8oqnVkeTpPjWjnH3wl+J3Yy
	 vvqTUygllRqNVJzQwPU9zWrb5vKQQXC8Lyf8hHsgEribRzbRHlOkLsDI3IkoG/W/Xd
	 +vLPzb2vzkGl5qW8AEK7xAJJWGp3tlV+M4zogAn6cCdUaq2b9wW0gjhXmXeMmt0s13
	 CO5ydfrdst/sFqexg/2aIiJ0DArkMZOH1z0dDqZvvivQRodv86Owh+xidzBbw0RXsx
	 VGPPpgYM+5YzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F638C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746655357.9600.2210076783965435312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0486f037bdd9a49e6576b4466e5fbb4b91a85f266d2e5da68232f7ab52fd85fb
Date: Tue, 21 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737466553
