Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464E2225408
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744833594; cv=none; b=ZU/FR0Tv+NGOQEwEZQw6oR3+ZT9QRj2UaWak/77SG6AKGRl+IxK+xZl+bH28WXfGuGuRAS+kAYLBIx8avxTu5qsIQtebvujDT3XptpzD7gSQXPniD6+49ME++p+lmiBhIqXUpuxWiMJ3psw8TelWW0NdhrK+WSyvdGzpDpv/KSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744833594; c=relaxed/simple;
	bh=5q02lkTIzYwuZ1gvMpwq6iSPj9Q2wM3lLmCW4LVYEsw=;
	h=To:Subject:From:Message-Id:Date; b=NlWr2Zb45I7mqKxc3fQIPm6U5NqVeQX2LHsmozVIgQt8CK2RqBYy4FNMy8MK3L5FmXNSnxOCbiwsht6Ouo/ZqKuxVHgSVJUXGjuTDI1sO1KOb9JPYjij0+awtWchN6jgTVkPuzqg64akXVnzli3uu6cy2raXTBpcPQ7hicZX7Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwYm0UFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwYm0UFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D1FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744833593;
	bh=5q02lkTIzYwuZ1gvMpwq6iSPj9Q2wM3lLmCW4LVYEsw=;
	h=To:Subject:From:Date:From;
	b=HwYm0UFazsjNkemPmx9TGYA+eAjRqH1a7kjJU8Hz2tf5vA0jWC42V3dxvi/MHNATH
	 uSafh6dTJxCzyoC5HnV4Wf9YN7ZDuJyl2E+ZpfhxnX6pFYME2ACvHrfKuQdiO+w9eb
	 xiBR2UZGTrAJ8leZk5DdvFoQL1ShiCWGFpPLAWPATmdxt6OEFQsA2iMxJNnC6mHyvQ
	 ByPklsrA/J8ci4BgJVqMjvmXJtNX4hMEQvaYsc3b8ONuOzW880k0mWNwl5cHu+pHcr
	 z2x4DAmN7MC3PYKjWabZgMhp0z8yY3b27hgf+v5yXAU4fD4usekltb4hHivr60u0T2
	 vOcDPb2hWsEvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD3C369C5
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483359359.22305.10703023309115907672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ca48003a6c44866787de39bad6ef3b5c02afee74ad5b98de3b566c2d17e638
Date: Wed, 16 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744833593
