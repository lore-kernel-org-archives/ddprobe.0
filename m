Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137D43E63A2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776942454; cv=none; b=mX0TBFioMdT+Kh8HHafKac75MnEsBogsiAx+49I+kd09or4CzIJkZSQtOsz+a1JvMquEo7JYBbTfuUJBZxzQkyubam7Xi1DXZUaFzrAG+1sQJP7VSwCAXlI1XlXLgxHfFJXh8fEKdVVjzFC8fkMSOdpaz9fYQwpmDOoQocdI6hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776942454; c=relaxed/simple;
	bh=tDKWLMwRdh0rThwxPUq5qDh7aUV6i6FzZnudpiR6Rc8=;
	h=To:Subject:From:Message-Id:Date; b=DPUZurzGpgQfUCB4qvnFMaMt/dxpBdyG/K4KyNpSR59xXRKEch8Wtzjv8vKqTIW4R7VMpz9emCor1Ks38RlwsH8dVqf2A3FamWwgfnCXa1USJgUZb9TATxzNO3rdShHBeh6zqXHG7VgepMp2f32/Tqy+bCZfUF8GJY5EeL8CsG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0HdYzFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0HdYzFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB02CC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776942453;
	bh=tDKWLMwRdh0rThwxPUq5qDh7aUV6i6FzZnudpiR6Rc8=;
	h=To:Subject:From:Date:From;
	b=p0HdYzFcfXOwD/VV1zyY6rv6N8GvGIuaEpTBdL9qiM7r185MfKuCz7X7j9ZRe5QSU
	 MV+CqhN/Db9/BFFckLPK7E8Vw8JGDliXcqoAoi/NumYioiXXCR+nS9sj50/GlyM6Xg
	 /CJneLR3hnQPDFHGqbNc9jJxwVGQlAPPpEchgBuF7ambPN7h+yI51Tv2DMBUJR0kvZ
	 QA6XxRsdrCsu3GH9XGK/ioylVlNp4+exbQ7we/VzUnBmvUgUuccpUDQ4j/b6soUWZo
	 nMSnK1owg21kGfYFGBti19YuqGEXel9mWS7f/wyxJi8Cgzv6s1leubiYEewlyCWmWg
	 avmZve3wli4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F56F99368
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694245368.24463.9926278270759376331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10f190d27e4299150128224a4de8922d9a4f4472eecfeffdf291a44dd0b81eee
Date: Thu, 23 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776942453
