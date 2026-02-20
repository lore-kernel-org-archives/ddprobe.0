Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFB9365A17
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771608894; cv=none; b=VJOLqtsVzvEg4uHe28jGNmtrv1sy+z0mdzdYbX/Cmp1ci689+ZIHXIcgBfgqPrlTyp/DP0WNfWN6w0Sgf7Ki0hQabitNMu1VoShqnUua4NPNgpc0rx5+vcpnHUMEdbDuSBPf8Rhj7M4N2Dpjy7NA4zr5x0DN6cQLPXKw5IDePvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771608894; c=relaxed/simple;
	bh=GI6wzfPl0gtDEOrKcoqYIhiH/L3TpR3aG0RVA+aYQOM=;
	h=To:Subject:From:Message-Id:Date; b=iywYuDd4Zn2GqXWcQ942I8DXm4fj+DEzzMo+SG1VEQ32sVAT9wHDFcuowsOeZuJV8Xzm5JEao9egK6cpMOA7afISfkvUW2d7BhPwE6IlFuQsM24zys4XL2MMoF8cMcWsSpGEavxyHmeMucVduT+is1U6AkeuTqq4gZCCfE9PyDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrZxgoEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrZxgoEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF80C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771608893;
	bh=GI6wzfPl0gtDEOrKcoqYIhiH/L3TpR3aG0RVA+aYQOM=;
	h=To:Subject:From:Date:From;
	b=XrZxgoEzbTZv0U1Mz26pS5n7rEESNSbAbNuWC0rBxtE/3yZ5qHs6VjtRYaYa4T5Z3
	 klQsm7SyZikLt8JjV5WYA1RakDlSv2Vo5xzwZ8aiJiSAae6OgN30WGbiIV1cbOWCCq
	 ej5JCVV3+2JfG4qf12xWZLPImUhMoZdTLKXwD8QKPI0IwzwgfzJ3Uz3kMyOwjPENiN
	 CnbqOuMcv0L4/s/U51xTq/4FpPi5cAbiaaVjHWm+GdPu1DL0H2ejIyL3UDtMFkXpL+
	 5tTufCEmHNLM8+lUvtZtxElsUbzu5Lutqb77ENTgv6yPSsdvEjcbQK1S6LmXIemU6y
	 cXGXpNZGHbv7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991F5C5ACD9
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160889361.16983.3924689666853177898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7994c884b912bb735b4ab17a94b63d3e24475d0dc97f9a521f75b0fe6d021492
Date: Fri, 20 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771608893
