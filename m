Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA46195811
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776739654; cv=none; b=VV5YEI1US34yo/HOUtDGLfx+mAjiPuwWlrlfnFKusmIL8oKyRDE/mEAlravdo4PSRYtqXRLuz3tJhSfE54pwrzVP7MmPn+vsir/VSCAr9+aurfsJDcmoOiwk0TeZUbjGd8vo9bq0MYhWoPPsL9bFplp2IOnAAkjyAXlT1jYRhXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776739654; c=relaxed/simple;
	bh=ja0ykLr410WIlUgcB4rzlothf+H2qGkWeYHetQgc33A=;
	h=To:Subject:From:Message-Id:Date; b=PemWYuLDEmGHPILI52f+2IkHt0cb+b84ywr2KXGbAk3+aUi0Jw23wW9fvQWMZM9TYFOYAl04SGf4l5B6yDKRjdqYRV9oi9y+KSrumniCKFCeLYGL3Na7Sa8Ns8vSvIuHLXoVsbV7NkxjwEU4NtMlNOPZ3D9uDbkJ1lMHgEnpsSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hm9p3u5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hm9p3u5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73FFC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776739653;
	bh=ja0ykLr410WIlUgcB4rzlothf+H2qGkWeYHetQgc33A=;
	h=To:Subject:From:Date:From;
	b=hm9p3u5TikKNb3HT4ST/MsRgLAqFKXdQTalemSbqwrLLVfJThlxb5jE9PWUMAAD4E
	 FaFGeBgz0XZAgJtC0cnFetI7RXMO2xF9zyUkT1HvBUu8DmLcALcoEZRgTSbKKe4UtQ
	 sxHYTSzPfaW7O/7gHzAq9B4TN6l/tyhwbCRcTZZIgZZn2q/ooqQZkGqZdnc2hCe5Lx
	 isKNSHupBjI0N2FMFoyv4HbZAwkX2UHGpEEHlyKyVZpG2W9LlTXw3oho5Lit9IWJ9O
	 +B3vQebuByaJ4/HfZrwHKY3j75hcYTw6NdhhGRo8BrHbGsEHUlcP7ziNViE5dsh07x
	 QaOYLI/RNi0WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FE2F5A8D3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673965368.22992.301479473426018849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0615900d1858638cecc8ea8760d4629b614a03346de2e81c42e78f7e0bbfbe5a
Date: Tue, 21 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776739653
