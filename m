Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F037521D585
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774947894; cv=none; b=dkMWmWWU2nq5mpQfvWz5/EK6j0njcR6fiJp3QuIhjhziJu3B7W7AGLlmVVWpmzrA2jfJf0O3CwReh8Wh1byZL2MMlT9kF74TQ+7fn2UkYAKL5n8aYkDW3m3KfUb6TdCGMMZ+ziy9+3WjWwMDyDZhbkP9TjNJ9nqfAs7EPUU7tFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774947894; c=relaxed/simple;
	bh=p02xuE+Pg42+BVGfcG3Rz6MvEB65F+qDmCWqJk0tg1k=;
	h=To:Subject:From:Message-Id:Date; b=u5J2b/7yQqej+6Xi3TvMpgP/eyCbh95Doljg7wxXWVOob/PIvf8ZlNscuA1d87g5UvPYd5KJ41sZsd9ggQfeT91uaf2poYtMIpGoLzzvrW0v/xFOUlXevaF5FOJlxhqwiva8hqmQO+Ww7xYo2QSuW9SdeWKxW71dmdwkNciIt/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umTj1FEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umTj1FEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D4AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774947893;
	bh=p02xuE+Pg42+BVGfcG3Rz6MvEB65F+qDmCWqJk0tg1k=;
	h=To:Subject:From:Date:From;
	b=umTj1FEJt+CFIYZx0DDIuCK7mm2gePJFSx0AXY4YPNcCz6J1bI2dbXsI/2JnBRa7n
	 40H6jKDzhQ/gFPeAB9rTkX8H1jTQXudhphPf0UFeEuxo1OHkrz9yrFE+2ZFf6uEqWC
	 jT3z0c9Mopjpve7+UGMwQbbi9vUCc2HQNGOVxnj6ImWd6sv5XqzkyJvUx3M7V+/KkO
	 lp5ySPC27t1DT/e6t2m0oSvcUCnSTWMWQPD7ZUTswMCignK3+gPrNVYIrAN8I1F4GY
	 C3wdn8Pl8wvASU19lZLJwu1d8BMuVLgOiRaGoZvf6qQ84pH0qDCAvJ6Xr+rZSiFsxH
	 aUCK3yazCZuVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91559FF60EE
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494789358.19377.18430892025365850492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8ee8d4cea376bf94416cc78936e522ebb28aa748bf46f0ca20c8055ceaa452
Date: Tue, 31 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774947893
