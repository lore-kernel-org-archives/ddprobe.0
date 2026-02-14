Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356BD1624C0
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771037694; cv=none; b=KotirUN+S67PrT646fmtvyMMbmNJ9Eo+jHUyzkk2L6xSMuTmVQ03njzuXMs4HRmACgUxlK0EnFB8V3Oq2xNxIPgfSxRxA5fHlZgQ2M4DvEyDz07Pg92+YNsjfmUHDtzX9KoTBdtjmWxAXi3m9UQDjTJEOm3WNNMcO8I20AbPuSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771037694; c=relaxed/simple;
	bh=WUyFFz0yLrhR/Tzo60ZOCuC6Fnfp3ilf4fqLNS/vB+o=;
	h=To:Subject:From:Message-Id:Date; b=euGSPcg/XZ2PcjSLMDeoOUKi+Oc+s99UvtvqMWkAi0q69BSJeCKsmGKq83jP2xLfSIFXziwY4KTjE+PNwgTvkipR2AZVc5NDc9O7hATUKq4iA3tqPnSeEBvpVWm1r5Zkok86qVU1QopkM0yDmfSniWjDSsSgyYElqASRk4AfR3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wel/MEJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wel/MEJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF0CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771037693;
	bh=WUyFFz0yLrhR/Tzo60ZOCuC6Fnfp3ilf4fqLNS/vB+o=;
	h=To:Subject:From:Date:From;
	b=Wel/MEJFE2+NGJo0KDCK5F2DwLu7EbIcoQA7IsdZrIwHkuTCKnClVi/3waR3nXpL2
	 gN6hcqSaEfFZ9zgimI22KO2c33Z1XQcInD1oiE/vy9Mw2odwMn6f7j/y8c/m9GNOHf
	 aK37EC0rdWmGcLrVAPtxrC8Yo0iXfcyi1loRY8cyT7glZ9gRYU21NYDBFH+TUjYGbl
	 Z/3xGR+0t/OivqAKFiGkD2UGjKGxPgEyFMFTH4CEHua1eSSKo61Sc6WEhLJwzo9y9U
	 niEtbfw9uwdW3IY4LNFJfDzI8Lm0rmtiKWsRtn/DGQkifAd4QLk8jSmo2NSfcASF/+
	 wFqyR07WiHOEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD73EF99F3
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103769359.17192.13931079931814790529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a056302d544d82cf1ecd2bbc63340a96828b17637729976c3316e47574db6f5a
Date: Sat, 14 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771037693
