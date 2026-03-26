Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F251D397691
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774567494; cv=none; b=GJipQka4rJhZd9r5OcZ9O/hcSIPtQ/UOyz+ISAk88Fty2AXFkkgc9xY8QHXjbpHDIiWluSqjkAgbjUKItoXxko9hCrjg8HrP1dbUxd/j12eSNYHSWzTONrvK8B8bwsH73JLkuSUPhnXOVE3Noal7NF+Oe83sGoZo3IgQWHNHT3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774567494; c=relaxed/simple;
	bh=QUIPRuG1RcanrW1TRlOO8txowCrejod8d3Pfn9KXXPs=;
	h=To:Subject:From:Message-Id:Date; b=g8l6bGOGZWbwesYcuHbbhLPke93q0vKQ2G3hKvLgWN2O7wT66IbpzM4+4wx8egLhOauO4+AAMz80ut5lzEFVJ+jFmGpnF9++aaLANCVFj/Oaj7AD9/xF0uChP4BQUnloMM833qjVBJUJXEP0smCwfXgOr1Dv98Yiq6L6iceR8c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJ0n/W6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJ0n/W6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F9C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774567493;
	bh=QUIPRuG1RcanrW1TRlOO8txowCrejod8d3Pfn9KXXPs=;
	h=To:Subject:From:Date:From;
	b=qJ0n/W6bxHC0soR5AoA/6Zzyj8CruRL0hrXpWU+PrxyS7syrd+yZq0JZOiSHYWyWg
	 0fWZZJ4kC5arq5RKjCjnxWBQIRv5s6xPS2/JxY2GZW0Vw/7X+/dDdAA6LlT2zQPouo
	 KXKAPXiHkjRjCk3/EkKD9jtmEMRqHoFUZwhY9MejCUs7Ztd2M33LYRSG026TrieJWh
	 5EeIz/TGSx2rmXzyvJpSUOaGGp6YMVT341FuJpQwHFDt6kDjMuuofISUzNULBHhLNz
	 LvjOBzFkqdchL6ewla3hVI76oaLBCXFoe3obDTj08ZE5m+kQ0j9dQ38fqwXoJwq8/T
	 f6AY1vzydbztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9241910AB82E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456749358.28937.14722203604557226960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3025ec4f7649a6398f49b1547ffee83cf260475930924a720d6c460f6b9cfe66
Date: Thu, 26 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774567493
