Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC0B199D8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786131034; cv=none; b=nCcRbDprqNAi5/1KqiUBZrXvXwPICGpIa8g8+uxzkEq4ZaDSSb6IlX3hlGpA8d1lRuSMJ6uT97l4oiOvyP+QowY88TCsWU4R7Mra5230s6WG+Jukr+BdUUdAUKE0BmMtXIHWcgnl4oD5Sp2WXJ2iheM/fJxocakj9iFFysI1QfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786131034; c=relaxed/simple;
	bh=mk0yQ/FnFikzxgRSr57K/Ov9JX4NyIVbQx7Uk83t5SA=;
	h=To:Subject:From:Message-Id:Date; b=oLpW6oUeFK+DEJEA9m/uCgSehSfp5GRvDy4yRoTq0Ey9CQipTYHAEiBAqtagd9rOk9hXJ6+HpUiYfHf+y/BHAVsUBCFI62C5zq509PXiGmGvB9Z+sZCbHMIHA2YdBxGbe858Rak9TX4cUa5a0AyuvznAmILAPUOsNK4/SlWAscI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWTtE0e+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWTtE0e+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2529C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786131033;
	bh=mk0yQ/FnFikzxgRSr57K/Ov9JX4NyIVbQx7Uk83t5SA=;
	h=To:Subject:From:Date:From;
	b=FWTtE0e+eV4c0AFBx5xYtigxlKBWFk5TzwKnAIrPAYu+XxZu2WYYI7KIZQ7R0P2Ox
	 OjOwvPUjYUM2RfCXOepHaPadRJV0uTS2jLy/NIKkDN/nT9OQMI/FgSTfxWUU8ToUMW
	 9JZ330L1j9haSipWrTvXvFrM/YHdYmNzWyXhV59oKoBBdhUBKHS/wJZHfh2fa0uDov
	 IGmpVQIhJqyK8kkGW8wXqxqTyp+j4zXWlLl6732/upNvr/Zh78ximDOhpIoqehrEj0
	 GWdvEb+dHK9GFpljlXeync/O0sGRTqPOlFdhI17at/asRZDVBfJQgPv6gS0hgqXOZH
	 ORIbfRusN01jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE155C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613103369.23696.5417398821919826944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb998ff10dcbba979b1d492a73704f7144ddc3e407cc888e965661da7d9d583
Date: Fri, 07 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786131033
