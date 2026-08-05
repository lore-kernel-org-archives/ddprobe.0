Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4566D3B05B0
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785963634; cv=none; b=MAq22krdhWiIiPv0CCF78zwBYzbLiTyLa2rAP5v9Ac4BuyEs2yX3jDDijNg5A3jJG8aRY3cWLYrU3LF56mIlK27lxf/f80ue+T9GtR2wrna1BKmoPqF249t0yaw4NFHA4uS8zW2/DweITlP4xrYzgTw/9DdtkyMJqMZ6vF0LL+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785963634; c=relaxed/simple;
	bh=1zCmHHyf1WghG8C6hs2CRzSmj8V4PCvZe4KR8bePWJg=;
	h=To:Subject:From:Message-Id:Date; b=GCQFctnWI7BEQDajL9Yh/tjhxoHmBi6WivR7DPp6tRB/t/FuH38eNZXVKpfSZQEeDIyvxYSjW+/7p7R7Yw7KziB3nAXG6R2tlb8nzo5MR46SgNer5VYnHQXNzxWTgc4ifMoxqGXFWilhBNA+skJ9IUqGsx17KIQFyq3UB5XdPkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5tNqMl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5tNqMl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5189C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785963633;
	bh=1zCmHHyf1WghG8C6hs2CRzSmj8V4PCvZe4KR8bePWJg=;
	h=To:Subject:From:Date:From;
	b=d5tNqMl+OZdu0DqyZs/IfQsyLa5Q8Mgw9h7ySSix3UlM9jH1aZMNYHts5brEi2lVn
	 iqihiDezJg7wejAySkk4KnSw5yr98UdmFcl02ZwXZUD8wSBJuhDQCJDCiU+TZcscgT
	 YqwzuQJm2qKdgUIbXBnJ8zbTfxVoo8WQU8WdAZUdSa0dGd65PBZSp2OlQpmr3KdxrK
	 5yUhh0a7ziSRb1R7ueonFkQU01NAEwRjJeVYBMZ9VWpSxSfJo+vqsUrgMubHLo0KhP
	 CkuGBNmJBjFux4mi1m2aunhTPaaef25CHKmLI7BniqXQcryKSKuQrs/h0CVCd+qXkJ
	 y8jAKj3fDgA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF845C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596363370.13340.11909003634633621946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0867b3e21216d6080acdc823784858386defe68157dc1d7acfe33b29d0132d6
Date: Wed, 05 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785963633
