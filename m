Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5610B4502F
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748146794; cv=none; b=OiM7S6PB6u9GsloMAskLt9c8tCcFo+UJdDNXrWUHKgQ45N4Jczum3tsb+D0/C1D0wv4XKDLzXHiPxYdSljawNomVROmDbkQMBqq9BVyoF+tXk8qjCK5g8/szze/kRABnVknPgwz3U3jsm7YwX3hSloF6fnN0XCrcwB473p/skSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748146794; c=relaxed/simple;
	bh=3PVmB3ZKHTsYxDB4Rz9yUnmjmJwOULp+THcK7FUPB2M=;
	h=To:Subject:From:Message-Id:Date; b=QHiUlFYpr4RmzRQEnT7+f7tNulhl4DjIUkztnfpHwPhnyRxUyNsz7ClTQgX/ZTYAxVe4sNUWI7GePW9dkAbxW9ThrVbbJ5y2wyGu0J0idFumVyb79rzJ8kwAoYCEheO+KOXFrIfW8bcFZXmaj3mPf7VVJt6cf91A7pY5UfiYVTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOkm0Mlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOkm0Mlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4698C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748146793;
	bh=3PVmB3ZKHTsYxDB4Rz9yUnmjmJwOULp+THcK7FUPB2M=;
	h=To:Subject:From:Date:From;
	b=mOkm0MlpQbiGGggSLpndNkfBVSNApod+ouKeKg1NmgGRXOjqchgsYwFdLowAB73JM
	 +DPJV97vm30Dm5dbyrXLh9xyBE3/UHCQb37A+Yu8Rycq49AYzbfF8bbYF4nksYomQg
	 avddScGrypzR7n6Bp/+7dA33bdGLk6XnaC+Qzlf/GdPnPKg2sgxmfy6QJaymsISxcQ
	 r5lfTAaAON4kSCvUOv2LqQD4qNn4wHPlhwpdheGIKoxfm88kqvITvzgAjG8Qa0U7b9
	 t6ZfVy1hVkxoGW+OvCZU1FhCaqLdkjXLNSuDW0vGi70Rt2vE9UFMWU1JQL8SW/zKNV
	 G+wZ4sBuQZ9+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DE5C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814679359.8266.13858255164912288373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30575f3021c763c4e37ab21ebba487e6784972df42231251c46a7d296e92865c
Date: Sun, 25 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748146793
