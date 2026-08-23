Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E6B38239F
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787518834; cv=none; b=SynnfA1e8hwKyq9Sjx/DZA8m7tDmH8a3xSTC68K8UyhZTFA7ssmcPptkxis28PKB/1hkqZ9B9AgIQnGcWFcqi8vXt/DrQEPsr9UXopg1RtGhRA0Bx0rFMmME5aC2I/8rP1SC1gA8gJrkMxSwynGxUwHqEZkNPQitnEEZhyUguvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787518834; c=relaxed/simple;
	bh=ajuEEcbGIB1WCl8EPmv1LmwNYA1PmCAGjkJdOFQRB10=;
	h=To:Subject:From:Message-Id:Date; b=cB4wXfdGumQI2s9tOo9Rifxwq2NCh/rMCMgfp4cisXkb3Cy+/LY09Stayg5sLjPGBd/a9ei/ZDve5ePM+bmRapN9LYarpoeu8FJw2nhHO4Y5fFqHWX5J42ppt8OhwlY6ZJolZMTuv5vebchWdAqvsi5DGFvOGUI54hKF7tRjaBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sK5Ywqpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sK5Ywqpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1AAC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787518833;
	bh=ajuEEcbGIB1WCl8EPmv1LmwNYA1PmCAGjkJdOFQRB10=;
	h=To:Subject:From:Date:From;
	b=sK5Ywqpw8K5fNOnE3mPTsJZnkoEirk3bbgHWRmhor55d1tg+nWxrUB1ywJrPLuDkf
	 Jagru1/ZfeFDVxEPeIq/o8+R2S1tPtc/DaPRZxBouuzeXxiL2c36kIq50YSzix+k2i
	 U8SeBOrrwCV3qZkJaIJJv26hu4ZHmx/DrVUyZcQHJwCyn1BBmKrgVCwen2pSbNurA0
	 bP9KLBiPiZ6jwRNS9SbiVOYzIAGyPlrl4iyVJPoPVA+lP0yQkiWEPfPcEkDTMXtvsp
	 qgaBXnpqwjpyDbAh2TMWsggZmn9AALvBo0CabI2Pm2Zl+NYbYjn5fyVWyCrmeOhH/K
	 2el+URUOZZZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B68C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751883368.23116.6044244542398039302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2aeca0f49b9b75baf840fc5aa020b0cf4c75877fb0c452b9a5b2e8226dc5a1
Date: Sun, 23 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787518833
