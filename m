Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA5A2F25F3
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779613354; cv=none; b=NEuVp8UBJXcE0B63ByJlCEmthaxP9VbHEm6YAGsSCWl1lRFb7BpsHtVtE0LXqx/xo9WZiFJE0gwSOHFWAwkbRbyFYX7ZNs1I2rzO1cMmp6Ixfyc2ZscyewLEh5VxDDULujt87FpuzZBTZkPprYSPt/md/YJNTPOTVYfQDRiNZDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779613354; c=relaxed/simple;
	bh=lITJjHK5Ild8SzjzmOgA/vjg3a1TX/c5pRUK/My5aWM=;
	h=To:Subject:From:Message-Id:Date; b=ToqpWSNNsZHMY/nEDV0/m5r0vOog36j9uJ9NTDDKBpKXxvJzJa+F3nsIC5Zib8X9/1TNCoTRlBJ1BumGeITdGNsSTnYbT8yoS9AjZ5BsLE/mE35o+M/V1E51KkhOAeTHtVHur/bJhcFeyiiQmJVb6Tdt4k5d9u3p3Sv6suxAA4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9ceyh7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9ceyh7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4051C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779613353;
	bh=lITJjHK5Ild8SzjzmOgA/vjg3a1TX/c5pRUK/My5aWM=;
	h=To:Subject:From:Date:From;
	b=Y9ceyh7qePdsCeJO6zMcyRXzp0NQXYD7u7YIaEzQ4i+df5K+0JP1d4q81m5S2Bwgw
	 1m7MbiU9jbRsKO3Crm6LnBWVYAx5s+2WeNymnxEKFk/l1SmUd/o3gRvHss6IIqo1nz
	 NthNdwjrSGdOjw4TDtGjAvuuA45p9mbsH2SXzaJk7QygT9QIF5nExbaD1sAXfPaaBd
	 GrKyCsSSygXKWRn9rtAKFB54qYmiBa0tXwJFHtGMvaBdzudcwpQ54FBqU5hh3AyqcP
	 LB0Ps6+q/0f5zmEtJPny1gRthBz9Ivnf6QrzzvtJv3TPLUdaOGNtTS8hSFKxA1KGgo
	 bMbRdkQll1wyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA1ECD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961335367.14825.9218252124646464443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c964581e8d957afe7680707212042e90a7b9774597c7fcb2281b80775a9abfb
Date: Sun, 24 May 2026 09:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779613353
