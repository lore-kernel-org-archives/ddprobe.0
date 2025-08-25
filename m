Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168AE86344
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756090795; cv=none; b=S2tCd5QAkUF+RUA5VpbEu2jGsBERb839g8ggLfJ394uKmBrZBo3NUoueVT70T0jtedQ9gjXgNcxBhccW4LvWMEbxuzYyO1Bj+HfHgcFPNlCd2habXcSgbH6yJNBM7niFz9nC8ZA+ScNI6Bi68bIQFHNt5LTyWmvhuumfTKEc9UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756090795; c=relaxed/simple;
	bh=6H/1NC7r3g3W9tibOUavNNALGGHgK/T7t3jpFc4UJA8=;
	h=To:Subject:From:Message-Id:Date; b=Jpd6MzEWtxrfvJ0Ne+Mz7DRizGKGdZ7Ag+fcMTEX8AcYQqh9Vak3/vYL5AMsogQHkawVNdN3ZAiE0WbCQojNHYETm3h+i+1g/8TRGIwIs5oOQEjzYni68EmCsi3GV57txSIUXs/lRTJOAjm4gyvP/mGqJVxvNqh3/J1NKTtnJh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GurB0fsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GurB0fsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F3C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756090793;
	bh=6H/1NC7r3g3W9tibOUavNNALGGHgK/T7t3jpFc4UJA8=;
	h=To:Subject:From:Date:From;
	b=GurB0fsyBteekeC76zVoPxis6+xtorY4S3NbhCLCpFh3x3ZAnVzlZgBaHdCqtJvOM
	 x9gc4zjZ+V4oWr2+Dk/RlqF/JREl5cZ5FeIVaXBaYLFeEtgG7VThW+KgsooGmb5djN
	 jbNako1A1YN6Rn6YPir7wXnUm+FiTfJMKKsEK0dk8I3hf9Vx1ArWgV2k5SNVWUmqqm
	 KcGkCSxtX6eVSZoSTg10hkBPbtdyuAFK0eYbHZsyrMLdkpLtNVK2nVEPk6kqGjMGtm
	 Uq/TF9SQrJVKQB3+DZBpdUTDWABhcFOYZnO9HJu73ShI0YnmKVbLkUK95DE0+fRBtZ
	 tkOQ98sVq419g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3ECA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609079357.2141.14488877212874563861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30fd4d00f006a00b7a93e266582db621239bf13e4f636198f07ec66365478535
Date: Mon, 25 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756090793
