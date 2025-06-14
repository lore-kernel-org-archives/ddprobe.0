Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1513D18C06
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749886794; cv=none; b=Mfvgf1rcA2u5JhkHeUpR6zCMiWY9o8oPCJ733cvjjQ8S9mbl75tOq5uYQ3u1RW3HGcvoAd3UVI+nqdoox1IiL0UZ1ryYKkK/MNxuU0siUssFH+akuZ+dQk2ccKNrJCaCS+cdiatVOmXwpXSGYew/FmW6S8gM6JtIeM9PXJlXGwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749886794; c=relaxed/simple;
	bh=puLFntibE+mP6bvi3XwqhL7KCBsMSQhcSp62PJBpL30=;
	h=To:Subject:From:Message-Id:Date; b=oqtGuWDWhOZ2izgsujZp29eXimuZgp2jIvVzosq5Ugwc5sw5AniXnMv+aTrbcy47KaPM+62FWXvzNK4r+IoGUD43Mvy52SyDFm1dhSlEFTyeHxXjuGU2NpICwxc1S7nGBCoYyVCSkfM0RKsjyv53GagihCuMBbEStaH7/zSA/4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7zJDnTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7zJDnTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04E1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749886793;
	bh=puLFntibE+mP6bvi3XwqhL7KCBsMSQhcSp62PJBpL30=;
	h=To:Subject:From:Date:From;
	b=Y7zJDnTUn6plDFB3DWqcajnB65mZQNrGnGLoIxLTSyPLjYzm3spzoRUCV2mikrzrP
	 jzUivQyRrYVFn+X5xYKQT/50uj0W+7qVwiAxVABt8HAlC1thOcKKoV8b57aIGEmY4E
	 r5iXpZMErU/eZC4sxD6cXsDtNimwSs20bqYe3es1hD2eRHDuksTlpT8Lbmb8INNRw1
	 Ge+aEOeAB0wd9BShd3C13r025bWdyy1DrxlgkYWxQLcP/ur1DpvlgAjpTjnI3hTE+1
	 jA2EZ61SOeYH0IQxMcnsoUOw8k+/o3+p0PPOCWyjBeExfxpDay+XzNzUYUg537uQpC
	 dN6dyJiEcWnUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE1EC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988679357.28953.16062885472806612268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4a3cb46a7f3afdd7c77309c1155eb77f50836ab7c339a0115dadc7d7c7fa1b
Date: Sat, 14 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749886793
