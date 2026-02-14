Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2792626B77D
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771065894; cv=none; b=mmPy/p20LhhDfLx2TAIgiJENUh2VSkXlMiKL0xEOOvqxIujpU4JK7TEX11BN9I8JtZstvvMlXyoF0c4sSw6M4hZFpTXJeZdscBfMFNMvnYDHdkzGT1TQK8+Z8nY3E3zGCHd1xpkXQ4DCXWjYKm9lsLPI8zlbj848/du4UsofsZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771065894; c=relaxed/simple;
	bh=NWpHvmVPGG8ZCAiuE9wnO/6cvgzxLcKG2R9IBIJimKQ=;
	h=To:Subject:From:Message-Id:Date; b=GvzoLCNIKeRibXV8SXCoRmBCc56buQ34FnMXiJxXyev0hMAjhbjgB2g2lJCWOBkZuRpE6CqRYqhCXfwQeRFdFprmtRhtSMM+oJhalXc3q4av69hRCH9cOockp7iUEKeMvdiL1ryFhagpbTX3tNKyU8gX2QkjGpodwq+rwOvO7U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4znqxlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4znqxlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0190C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771065893;
	bh=NWpHvmVPGG8ZCAiuE9wnO/6cvgzxLcKG2R9IBIJimKQ=;
	h=To:Subject:From:Date:From;
	b=E4znqxlI4X6xYJcx/9AZyu1k+GfH7V/LfB2MN2Mh/QkCuvmI3gGbQM5IHegE6K2ly
	 38KtVwQS99EkKSYV0li4ehFtymHXCdDajmHyBzsasUdf9x6PpMrqn214lPWuvhW5LQ
	 o8IO0Lt87UgddscIwcHVRI9QZQ13y+VRym5upiONkaMZddxTxDwkpui6GspVorEC9W
	 V+5KMoLrgct94A4iKHAOfDwIzSAMYOaaa0IQ9rDjiucfg9CYF15frpg/ZGa71IxdvV
	 HGBL6W7jIapA5rDt3CE/5rQHYEAwLLQ2QdbuptHalyF84ynsgEA3djGuxY7lPZT02M
	 xr/cYhn7rN3bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF3DEF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106589362.30827.5708324887695227183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1a6b68f20d0762bd233648c86ecbaa2d7a69b0f3ff6e944fadde88e9dc1a59
Date: Sat, 14 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771065893
