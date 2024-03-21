Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065371C17
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710983897; cv=none; b=bHjQ0Pj+IQDn8QlNQpLJJKUBgzVNRhTz8t4HHy+Cl4OMiVF3JlK9ObK+bmcv/7rF26cxfntnZhWiDaUzKomuc0ItCF/m1ay/8DhbCF66j8mkWLxCyxxgR8wydq2jPITWRvMsXcaaNaniBbVj+HIghVZa5r/yfXUiqbdSkfTOYFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710983897; c=relaxed/simple;
	bh=uvu6b64dqfBwJpyYvtaDKBFiYt26OWBn+qta32i5GgE=;
	h=To:Subject:From:Message-Id:Date; b=KHPPSmP1W7EZ6UW9q3rokxwWVEkPl2PX7jZ5ZXNtDudAu3pW9bjVmRUDyDesZoXeDidUc1A0o2NzyhZ6hmqNN90NyY6Pz5kSZ1c50Wq+wSYjBWLQTD8iH0JxcQF07xsMoKC4f0rSHmVfJ+LCiDRAH4Zs8XgN8fWgNL5+3wV6Di8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmOyr+cc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmOyr+cc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CCAC433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710983896;
	bh=uvu6b64dqfBwJpyYvtaDKBFiYt26OWBn+qta32i5GgE=;
	h=To:Subject:From:Date:From;
	b=LmOyr+cch/OjEDujUYgSze/xXXUK+c6hJhe2V7C5fN+Ak2ilQslT+VvK2b2WZNTuy
	 gPNXIj+Cuh73OUQXn/17Hf7zz37jKYWXye1YtljlKtUTAoUIrdMxs007PokYXT5wm1
	 MkIoI8HIReG6lnzkhBWz2J48KY2Cnd+ccMib4eC7BaCVEaH1/2qHYDwJAFh51ht2V0
	 sMFQ5HNaFTyeFY5S65TG7yUx2ZCxJp0RTFk4nBFvXpLSFOZa3icIt2BR3/wWzLb5bp
	 o6W2OCnjUaTA6OgNxhOYpsPloem8NG2Qj6EBa2aUkfuLYY09u/2yGy0WHFSY2z2QbX
	 UHmld/U/A6GKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B20C54E67
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171098389638.24527.7932426140206743046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce04fd31c83a9975f490fa588ca76a9b0326fedfc17d6b030405e80a180cb84d
Date: Thu, 21 Mar 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710983896
