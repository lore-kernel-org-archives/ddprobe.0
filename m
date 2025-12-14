Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294152581
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765671174; cv=none; b=JZqPLe1JFfeXrCqwOIvNi89yA+Wa2oXLVB/ZXsoy9PdGdmKHnJ6v5ObYL/1VWdYbMTR9hc34VoyIFtN2WUfC/AwjQVFkC6gK98CYvsRiOFhH7JJ4cw03ajMGinyzuNNC6C0ccKBKxy9MPpU5qppi1lFkhoJNkQIbMQGn2yELOOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765671174; c=relaxed/simple;
	bh=Z3x1uiAFMcuWDElOj0g+K9LdIi/CuPkAqpxAiwWheGw=;
	h=To:Subject:From:Message-Id:Date; b=AUSsAtkh6+SSBTkxAHv9Vj6W2SwJGmYU5VfJr6Ym9MDSEEA8ot2XytIDJqkzcDsS5NUjzfbsO6jZ1M9aP8mbmJbddN/Ydj8e/cTzLlY9XEQx7zCbXhRgQTperiHsq00j2vb+qylSqq9uzN1xhVHqIMQnIeuq4I2mmKujyZrHNAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Agswjnl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Agswjnl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FC1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765671173;
	bh=Z3x1uiAFMcuWDElOj0g+K9LdIi/CuPkAqpxAiwWheGw=;
	h=To:Subject:From:Date:From;
	b=Agswjnl/HJ5wmVDhjYvn0p+P+m2/H8ePpjc0N9u4DwLoq/bMkVrnLIi+VJl2c1nfv
	 adWJJF3YMn9TJkbEboepu9fw8SXnwE9tM9EgOafqv2XhtFGfcbHJrGUS8u6kIV5qv/
	 MehbayRDdXEt91bQsDLANxzgHlPFIDra4UpypRrgwgGym17kv0m/7VfkQTapkTFtcu
	 FJRb98hNaZ5xq7T1aZJHEH6KspY2wHtfV/vpYwTNTUJtPD/c2RMvov9MIU2UFgIPuc
	 J+rsk+EVmcIQMVtt3BasE6+fkUb5JG9JEtnMn0tnQ1mKL1FGz9wzlAHw0Fd+XnORtB
	 SBpKQnJvqy3KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974D6D5B161
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567117358.16618.13343062976616391021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f937dfb69018b32aabfbf000694146168d123485f0df746ecbdc394ab078ef86
Date: Sun, 14 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765671173
