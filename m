Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5AC14B950
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744777793; cv=none; b=ptQzpQnj42FCnuzXT08sEn87uHERp1BTK8iapfu5B3iiXUvdUQtCTFi1xKHcKWnlJ8IoQEPDEYMzc/94N5ZGJ4PIaKuAiQuGw88EkWUIJkm1H3nm/hZ3V+9g2pK9I4qSWDXqnU4u0EjPx69Y03i5009wnbwZU9kbgwuOjHeo5HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744777793; c=relaxed/simple;
	bh=hyHOqcSa0/FP8PzBdqv6F+/3iufeXCdzd4jF9Kuxbtc=;
	h=To:Subject:From:Message-Id:Date; b=tyhq41s9v9xhyUbr0fYwz6za/8G98O4C8HXDg2nlHQtC/mdV6vLK8KYBTsWnHhnQH0O1r8DlMgW8Vf4ey9jHCUsiGE+Zd3vXunCV8ffjWtzSF6QsQ6IyrhmpbyQyoISw3EvBJRLuoGP25hPmGfclgaqsDHi9fKVuRog61YfWeo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eeh/B/8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eeh/B/8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744777793;
	bh=hyHOqcSa0/FP8PzBdqv6F+/3iufeXCdzd4jF9Kuxbtc=;
	h=To:Subject:From:Date:From;
	b=Eeh/B/8htEHEoxCrPBXuH5rt02KVo6a2khsnMDrviDu4xkBji0kZaQ+ef0tpg1AWg
	 iu8X1Xu2DNPuM1pAWInibq2+bUVHLUdIMCYiH9GoUjWWW87k0zc6r5wq2dyFFr1EU/
	 jxLZAtYMqPE1SOifRY1qMckMB50ZoWOmLy25X2+g1F5D3u0WmypPvzMSn9UnnkGMP9
	 ECiZeV4jSztBacEDkG6y4tVYr/hwzYPql+DN+akIMNXz3dYbgeww0TJn2VGSXnGkHe
	 tEfXxkVAK3nt5ZZrpt8MPLXfuXpO4t6LZpa3Q0XBLI5zvpNRqggckGwDXb5qRxfCmT
	 ixsrZIfdUYHgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FDC369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477779357.18685.4120278886513796414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1865faeed9f20e23a0820526b31125cf8d1b17349bfaa304d6b4f89216f2080
Date: Wed, 16 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744777793
