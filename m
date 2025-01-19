Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CFF23BB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737268554; cv=none; b=eIipr1p6w7NnVHIxFb/KG6wb1WJiAc7gD1eiGPLK8q+nqvnvludy4/xvBj/xEnKclrwfss9hzkyQ9eU5FWkA4Xgx00yELhw1eHJNBScyemgySI705VgGksDI15Xqa/+duuRRmEgZJpLR2pgfRK8bTvjtiB5uPYiPCI5U9feXHBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737268554; c=relaxed/simple;
	bh=eTcADl56EskufcZO6ND0Wx1aO/RrDrBo7Tg4gm62154=;
	h=To:Subject:From:Message-Id:Date; b=FikC/ILfC6VBJprcoLKiUV7MYep0vKA/Okv1HHck4XUBMoW8TQmEhoARxUJULxppORUj6jZBJQWz1yXrvclZUcz+3xEzCYOec4XMhAdhqMKTHIlub7HNzbEdqCVGGpihuK2jAPgTq/SLlaPg81yj2g2qoHUYHLdcHvHh6cVKtHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxyoWRZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxyoWRZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB637C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737268553;
	bh=eTcADl56EskufcZO6ND0Wx1aO/RrDrBo7Tg4gm62154=;
	h=To:Subject:From:Date:From;
	b=AxyoWRZrPukeD/gBVzg1dse/Yp+vCQGutv3RpVdY0KOPqFPlSwYKKN5/Z+pYnu7R2
	 lBJhN9kBDD3Hd+3rLrgO0tqB7h76ZUsqFgdmKmazhNyCE8UZhY0lv1QYFTvY4/41oT
	 qL6wPjmpbhkAgHuyeYAGYvIyiA+v3/cp8CGmaUM38XKKav9RV3Y/gwHpY40Duq5+u8
	 LJKAYeh4PDQGk4QAVFrvYjbv0aAIjWaP6uN0ziK+LFvdQBeCBdgNTH4GUOYWvR7lmY
	 OSPRLUKeN/q4QA+IfskGGXwdfjOWQVkEPM+txVgzoOf7bYIYeMAJlfDk/EfFNkn2Do
	 7V0V2GXVEi8Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F2C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726855359.877.13125251052426316418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ca92b8c06bb63f7e12a412b09656c6ed152cbc215962a74410d7d562070136
Date: Sun, 19 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737268553
