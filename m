Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4246913AD3E
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716892463; cv=none; b=BW+E60OGpSdGkg95gcR/F2vIjCoRgTFtRXw8+JmnxEV6xJSGoUgJ/4JJoMa1Mr3tjJ4JYPWo2mlSLJNKUWQuuWtJZK9uk+v0ClrBuY3UaXqMM8Fb/1gAOcwQ4HL3VX3VASEad5wGpAoJf8bfbOYGD6XSuDE3+P2C/ZhcPdNcUxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716892463; c=relaxed/simple;
	bh=ECIMd4bbLbHBgFVWECsJoQ3soMXtqHoLPKe15z2M6AM=;
	h=To:Subject:From:Message-Id:Date; b=D8ivjrJtQejLpHXUcoyFmfmDKUY2/uygk/CwQpmr+7/2HmBgVypQ9BMf+AMvp2edyhzGRkdb8ilLOzDohsorMjQQdCD82qi0rOlOuMDc78FdA+Nr/SE/yzBOQ4GBF7WGWGXaTNPGNxqUtKrZoHObQqHOujqjC0+FeweaEtiDLag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhHJuRNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhHJuRNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBA2C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716892462;
	bh=ECIMd4bbLbHBgFVWECsJoQ3soMXtqHoLPKe15z2M6AM=;
	h=To:Subject:From:Date:From;
	b=qhHJuRNmfFg48uuB15g1dLfrZKGbYgCqUeQVGyA+6xh8cMjnjc/4nCziOa2XDLTVT
	 V6LR6+AWjLHrN1TJIToJK+XwIWh+YUb15nl0TUKaIH0VTn09Js4n5krJc4zmncewTU
	 MF2+4QH+MFmmCNXCbVuWR2tgP0uM5EOgMK0xjy40QQHr6D3J9hcpS3TOFIPiK3VIL4
	 wg2RvqZt8Gboh7PRmKOKmiDDKFhDaUEW5MLrxfCZs4+4ATHEH9ul0d3ZaIZyH/fIF8
	 AKdR1eZ9vLlW4EafdQ5YXpPjHCk3j/2ygSot2tA9KLUJ41CEMXFhVLKHXBmfuVV02G
	 n/1XIWkxG3r5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6FFC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689246275.7569.14269670922128192738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd2408c3fc162755b84cd6e6da1a4ca8d76e30ce104180a58524223e216cfe8
Date: Tue, 28 May 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716892462
