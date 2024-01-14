Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECED77E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0LEf8zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8871CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705244296;
	bh=B9NPwes8GZRxulDzLL/fnOD2VTafegOxDK1TUe2ghFM=;
	h=To:Subject:From:Date:From;
	b=u0LEf8zz6eMLQyJmzIUAVV56raB3LqFdQ7XaSSeMtx6Q3+d8N8MuC+qbFJppAlvkb
	 qxq+G8ljmZylctIWOB/O477Esjo8CJ3j4u0A5uMnN6jAxe5kcZ+WiCi5Wifd7WC1Vs
	 etXzxzYO63KaphMnmNGEXSmOLrFOKrG0oces00Yc0Ef2Itc2HEJCw9CIogN/SnKfHE
	 3CbX8EHdvf++TTke2+okn0r0gGp+D2r5n8++QJAjquCqFtE0XOi/WRjdtKQ5JAUq0b
	 2I5NuMxm4C8WdXDlWj4qtw+pZK38krIHXbP+sG/MLWKTapNm7RUH4iw2liWcpaeo1s
	 IuUZALHJVRy0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FB7BC4707B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170524429641.15136.2511119610499622303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c51fa7a240e3a3e6ef84f54b95f396febbaf6d58b82f0a6951ead8f80b79c8
Date: Sun, 14 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705244296
