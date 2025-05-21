Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C131620ADF8
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747820993; cv=none; b=NP8bKlTYkpggNXOw+brC3/KX3Ad7jf/IiOnxPFtuHCdcc5FyDb7yzu4dH8F3Vc21Nmz+0WHsnDhULN0dLS3AnvXg65sMnAacuqbZQN+QC0M9B6g/E/MpQeWFXrU8ooEjeFjHK0n3UpBgbvbzDV4kkCregxqnwAkKX6Qt8uuZlqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747820993; c=relaxed/simple;
	bh=94OB4T3bxYXhgDkaZSWpUgWjKlF8LeX6mpODB3Tjkyk=;
	h=To:Subject:From:Message-Id:Date; b=ZjxNclyyexSKulN7LnlvZOWYQn9TZjXa5XXXKNwrvaGTi4nfArM8YQy6tXe9YDX0zmSUNVe8DDXuYnVm+yIJApv8/J89onvbO8vI/thjWCavs7dWF61eVxgYWz33XL5ExGtYhg01Ibwimj2wN+9XBYS3+J9sRfc/8THJIo+UJGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XG0DIi/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XG0DIi/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E253C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747820993;
	bh=94OB4T3bxYXhgDkaZSWpUgWjKlF8LeX6mpODB3Tjkyk=;
	h=To:Subject:From:Date:From;
	b=XG0DIi/7FUrNN4G55sHwFlPQ0/5zzQ4dZDgQnQ/bNV4114kFR8PyEJdBjNE8ot5xs
	 QJOQWEk/SKkZuuOFEhREaB9TF3eGCT1rgBLgahlQ8Wiem7bHi+4GmbNt7Z+f6kPoak
	 PCVNd+U4pyO9JsEqlnz9nTqLHkcNq9X0glTOW0VzHa1u0yOeru2fVyZC41NsvSw7Zv
	 /b1BXevo1rIFDFgdMS7MIRsIRbCkGAfNNyBWEc4zrC5puxGJhKnO/OnBr/JpYs/K6f
	 sEfg/MUhhe3HTFnnijHYTZvRii2Cm7Igg8P+XO5A/t7LsgnDzqgyqWYuzJOL/JU3dy
	 AIHH4KPt6XhLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFDCC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782099357.23256.12193224279256881676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e063d506d35aeaf4e3a9692292ff72f62f7c9d86548d050f1449b29d4243eb40
Date: Wed, 21 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747820993
