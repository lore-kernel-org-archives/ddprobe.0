Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349D41A83F9
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765665774; cv=none; b=QRxFzsWna80zOkwHdG5evI88avM+tIuPSiM/ft5QwaN5/Nlx2EiT+rL9n4dbYc5yft31RyoA2M4NizF545QxWcngzDfRtV/8y8B92RyaHvdWQVUW33Hq9dPNI+qiORM6YGu2Gvf0mRWF1Fz7GHLMOe80mUINt7NP5YQC7fMyQEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765665774; c=relaxed/simple;
	bh=rpQzwuvqV+rMEuF1ybhZ+gL50cc/Zl0/qWuI17Yqdnc=;
	h=To:Subject:From:Message-Id:Date; b=FX9bIIhU2ufnKGCKAsP6aadElj5BLqWsGMdN8pz9D5Fp90JRXncQCddYxo/wSX5OoLzs8d+IgRYE8qNcX4TvxdRNGq2/4fOKn/mjXUMtbnkgyR+Fgv6IAL5dGulw/LK9bC28zF4IrZkC9QdRQtl4uWF+rgB13y+lm7Mrv7bV2wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnUhAm/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnUhAm/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A929BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765665773;
	bh=rpQzwuvqV+rMEuF1ybhZ+gL50cc/Zl0/qWuI17Yqdnc=;
	h=To:Subject:From:Date:From;
	b=mnUhAm/89v4E7lLQNepISiA9jRZzIMyizAvX+1Ned/SoW12GkhpRHp1lYWblXLIVp
	 qiqGTBqAN+5DO+Eah0mjs23nJta8w6aCQyP1E0fbrTNs2KJvE1tydNONpkYc9CHwos
	 cbReVsIwcgQpvw0ETcvw8+AW2Q2yl0ZBRhMvQJyKXR6oOeF3EPx1k/LTSA61gIDLpI
	 8Nelw8K6jn2po5WWldBi83osYSw8sg45txQGe8JFOEuFLHghCQg5E6cNU6PpPGmltU
	 G7O8vojYGkz/ditKG3O1IIzOhvRtxd5uzIlDzkLrK9NehwUsNni2lw/rzKfVkmXUjT
	 SQitqCf68hKzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A2D5B169
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566577358.4304.1549812637245349265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e900369feaf5b925ef7bd4b84bcd6a530925c803cc364d4711ffba2f27ef64
Date: Sat, 13 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765665773
