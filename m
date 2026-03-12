Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A1C3F65F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773332694; cv=none; b=faLfseqnLbSs2RdxdDN5KttXfsGEr1nYG21NzjQGjE9GkKLfDnkWlEnEB7uySZrSDKCTjfdCDNWyNFLEOj20DbXZotvVy40HSUyuXR9vdf432XSyZh1ULMTIuVkdUpRvELvqbKjXgwM1kMKM7tlZcOZXdBqjeFM71JRcwLhj+tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773332694; c=relaxed/simple;
	bh=3s66dXo2G54zetbQp8fEeOl8A+w4D1qkDvkbQAS5G40=;
	h=To:Subject:From:Message-Id:Date; b=supeC9xwv/ljxY9VluXkWGyHnfGOhmorJ0tVgdsuA3onBdnOl37Ecmh2nuVXUFNlDuo00Qeu/uDvss/4/nVjxg+S+/dkajDx12VYL67KVLgMNljtqhROHOdH/kr5elu+1tGTSqi3w2IELKNe2keUGofKztZAl9ZEaL4KWd7ahPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2ojY9QU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2ojY9QU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1177C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773332693;
	bh=3s66dXo2G54zetbQp8fEeOl8A+w4D1qkDvkbQAS5G40=;
	h=To:Subject:From:Date:From;
	b=F2ojY9QUeWDLXt4FJLL7UU/6PnkMi63MvHZn0IzPBgVQaKUYpS1PPtCzn3rXE9y3o
	 Cam+h4bKSV9njnr7RHrkfL1Cbhz+Sk5kXOz9KLxmv8LZABG7HFO9kxuNbrpYldMegp
	 KVpPvYL3JIM+ZFOB2M6+FK7nD762KMJGK+tNhJOWDMpcy1ry7TlxmQZ32lgwQuZZda
	 9S8EvbjsrVQA/tTBgeDjoG+0kvklbMxoGTHVb3PuPd8NfGHyrTL7fAsoV3W48mmc9r
	 JiqNEHLSivaq/hH84bASuF6LWQu/0iDQg/giD6ed6Ba2Oh7UfJ87n6b8D2OqMNJxte
	 /jCwo/b4vukSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6AB106ACCD
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333269357.26714.15539492511036069585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61975a32edfbb338c87360fd97faa424cdee114b28f6e7039db54527d9c2164a
Date: Thu, 12 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773332693
