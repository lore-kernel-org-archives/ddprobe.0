Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4651094F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blM5yIOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE1FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699520296;
	bh=lrejR/kmgHDk4OSws5y3aMfP7zpC3H4dQ2IwiXrKnso=;
	h=To:Subject:From:Date:From;
	b=blM5yIOkrCoCxssR+XvzGMNO6XLs0v8sl0NC9AsNqotvRIeMMcAin3nj8R1EsXzsE
	 mlNjpVvKkpvhciO3vb9ig8Fp6AOb/3moG0oYeuZYLQLvz16GcXBQISgt2k09JiIqWX
	 fsLtRGbUoXuNe46rHmSzsljhtG/LCKFcnxgHkcaNLKkIju3TZcul2H/nofOfwki5v3
	 WXxTrFG1O9T5716Ai+KTJO09EKVev+6CiKm8K2IredCraMNWLpNl+uaCWAkcd5Zb3o
	 8z+v9vvuilczZyZzvcyN60WhlwXjpW1SQLgNGa01bDnbD9kDzQQITHRQmLe9BnynWE
	 n+EK3K5b2xlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73BDEC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169952029645.24891.6686840327177756617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea17ffe4a0ee88a4bcb540340548b408a53842d5f9ccd9ac5507d6aaaa4e1def
Date: Thu, 09 Nov 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699520296
