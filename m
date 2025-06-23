Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6FD22157F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750688394; cv=none; b=oF9qyl94XxAMbS744VoV8tJB8a1U1K/k0WkiI2EqHW+N2o4S+dDnB+YPsyZO0GxLGW88iA3LRxlzLiJRdR/gkN7yyuqeG5zX1ULu3Do2Wj86wNa/jlN+TUedJvODf8dX0fgU0MhSUvvq/m29UsEZZ1K8TsXC2E7l68y9KkIJ/4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750688394; c=relaxed/simple;
	bh=haLPZd9yqayGC8U9iynkKED/fQHgvwHm76KmIT7Frek=;
	h=To:Subject:From:Message-Id:Date; b=Ikw2ab/s1zA547Eta96WF6RKD9yDMDC11bUWC24o9EV8/hXFksWwP5H6OxnEYLSoTgDaAnpo9sbr/bFWxMIBHtaq+/FalQd4ccpkggO+mZsGKL8s8LXKpfin4twwgQDb8HgzKl9RUfXsIPpzFuQ3nqC6UV/lqCUbhi8g/H9dr4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUJ6c16F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUJ6c16F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A071DC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750688393;
	bh=haLPZd9yqayGC8U9iynkKED/fQHgvwHm76KmIT7Frek=;
	h=To:Subject:From:Date:From;
	b=VUJ6c16Fh2uvN2V0pSDYezJnDTa3mSdhAAvF0CsQsS8+HreyEgOo8D099/NVpqOoY
	 1dhDsajNMoyNTMNqVuF5qqj6c/MyHH7mKpfBlwzO/5kTzAlPl/s28AbwGYPmPH0awk
	 vKKU3ddiCitLYmPuH5eLb7+ZS02JAkCUsxKhqQq+6a4pAjesDb4vxmH6J7vLRriWOl
	 6Ar2hECwOiD/sJfbp+4w++1+P0gouCkv3sYseMoicvJj7OrHOdMfukhOC0iwn0+eQc
	 Y+1gkLHqw2u9YLZAxs/TJAQlkcHyRLFUYm6U7AiTLXEp1pfc5SW5zf12g7j9prz72/
	 0Nev9p57N5p2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E535C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068839357.22411.3943676887219769728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a34b52f27761d8584de7f94bed4ec5fa1877852c439476d8afab18eee8905c
Date: Mon, 23 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750688393
