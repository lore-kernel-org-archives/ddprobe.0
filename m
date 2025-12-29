Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6ABF4FA
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766987034; cv=none; b=QHW0hOt3A+XMgrlAyciSXnJbcizaZFjnk7f2Kuiv3/urcrHk4kCZdeAciz18/zpXYKJ69czXQMZzSFnknxPYlw0MiwEn5hkJot03otZf9woB7df5hKOVxHFTu8dDC4hyDj6BuNfS3V9qZuOAMv4oDiPMCkswdZzEEVBHKiQi5/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766987034; c=relaxed/simple;
	bh=1vnxQujS3kRjuPcB0iX8PpW/v8BXiJuRgtP+QTbBDXk=;
	h=To:Subject:From:Message-Id:Date; b=mQ/nNL+tAjl0/zp9HAdPDC8hG7sk4TrzbkW0a8NLaETi1nVI9klFvvek+OtHnZqVlrN7M5yUEpXDSBJWdgVHgR+xJA3tpAtBocFIOCqFOEWRWa58C6+DbroxDzHtafBXFApEgBhGuiuDhPr9GegOKkUT/aXSYq921dcUWq2yO8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTZbBhl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTZbBhl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC13EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766987033;
	bh=1vnxQujS3kRjuPcB0iX8PpW/v8BXiJuRgtP+QTbBDXk=;
	h=To:Subject:From:Date:From;
	b=bTZbBhl3LkDGQorV8zGU5k7XyIGfDHr4a8Z10XIDe1Zl8bvcfSFTlyPVFE8e6is8V
	 U5GkXsSsEAEl6Yo0EuokrJsLwquvO0Bj7C0xrFpHdd1wLW6cDY9G7EcAc2yTPmm6ef
	 aTbIXtteIKjKjf+9ZWQCNcrbiB2Pr9RPtZJVIgglcoc34twinnlquKIhs3Yb72eNgM
	 pfY7iGSgwazR/nhf03yTDH7DAFP14ORxvCTWypJSsQ+cakmqRcmc5gE3VZFlWiqr67
	 k4WKwQ+eTDnbFnJdqvoK4MaOkwz9Mu6Nc6bOoZjZvnYhbkh8nze95t+gfDbsDDS4xY
	 qC6Lh0KXTbiBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F16E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698703358.5414.17861096127767691240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba17c2040beb71cff6dc390ec0ef9662a319b988b2be1b79ab07b66b78cbac19
Date: Mon, 29 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766987033
