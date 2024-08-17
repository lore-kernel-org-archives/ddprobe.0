Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD0183CDA
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723899353; cv=none; b=uxJFgoO4itakmKUjMpOWCMq4TfjK71KP54KIc3je7EkMrNksGdf0XN2hqRfPbkX/28SF8whKqHHrkwlAGeGbfUnJyCA29k+YwDhpqWW91CnTFC9hGR3mDwcA3KeV1r7JMMvLokiWqTre8rc83K+NkjrOM4MrzL5Yztu1lRvvJGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723899353; c=relaxed/simple;
	bh=uS8ft0xGbfJYH0b7vsgUpdMkWd6NzVY7re2A9ddeNss=;
	h=To:Subject:From:Message-Id:Date; b=f2rY+RSbqRyI7cn2VVEqaAu1plRFdJD2kmTdSRjsggqCCdZgNHvUjqrmTfWOKMEdFNd+gDLR5fHXmF7rwKUATzr8jc1MzxTw73KT46nF0VCae1O+63e0HmLloXAeS4NbQUKCyDXBSqrzyTW5M2L6QuWT6LcttyD/CFcM5d/ToWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqkq6pBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqkq6pBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A545DC4AF0D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723899353;
	bh=uS8ft0xGbfJYH0b7vsgUpdMkWd6NzVY7re2A9ddeNss=;
	h=To:Subject:From:Date:From;
	b=gqkq6pBuJuRgbaxogDJRxwFnrq/9nPFQVaehHdLSkfe0xre38jxe0XwYy8nDy9FYV
	 M4ZtfClYnNKaHCOQnyaiEJF/QkMDIOJbN8lVYOeIV9Er088ndBohTEimx3d70o6ITt
	 fZnSGvLZmGz2wCfAcKhAcCSz7o5LUc6YJJesw0ov/Pq6o531YAqZrZAZLq7DdYxR5U
	 0XWm25LlXE90XcH/Ujr6FxHMR7Vj9k9qlf3dU2aM9yDfqSCna7eB9ZQHX6gy+qw9iD
	 rUwEPRITTDjDW1sGbFo7hlnC4dfPF9f6vS10RrsfTHVVNoNlpL/9otcuskYsecymEL
	 9EykCNJbLM14A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CEC52D7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172389935359.7988.11632358143572538757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56943f1d5bc48486bef70f9027a07cc9d02d01d2f7fcf8978f0b25f3fca3c0a2
Date: Sat, 17 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723899353
