Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C81211C
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741522735; cv=none; b=i2upk7VOcSqp9PnvMjAc4XG9a9FW84XO3ND5IcYbdc+ADXVg/M6UvRbV6GY9l964S56aIMc+hT3NaDQ7aZe9hkVX8QXeVa6AYmZHgr/XB+SbmLlU5cnpauZ58mRTzDvUujAKD7BC+1uerSz8QiZ1YBE5o1+2bO9T7uAxE5ucmZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741522735; c=relaxed/simple;
	bh=6+kS9u52Dr910fesv49QqZzOWVJa2BLsa8YWYqAQ4bQ=;
	h=To:Subject:From:Message-Id:Date; b=XuIShxWTilo4BYGHvgJe03mti3Do/2rHSkxm6PrBEEm3TnNJ97RDlsFz5lyyp2E0E5gQAly4EWfFHAUdIfonkxPzQLr6qMrNdOdmiOw1S6/UrWCjLNY+8vCseu5e1NdRIOToGj8CxwwNywYhmh+UNfi8fNDgmJxmFgqVPZSMSp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfuadgKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfuadgKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77AEC4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741522733;
	bh=6+kS9u52Dr910fesv49QqZzOWVJa2BLsa8YWYqAQ4bQ=;
	h=To:Subject:From:Date:From;
	b=lfuadgKn5isTQzM1NXGfM9Qn001s9Sf+k3rk0ZOLr1thIJFtq9LCjEMC2zrpTVazp
	 hlyOFl6tgS2XAySDuBeCu7fgyRB8uwqUI4I6or2YQQ3uWyTWG0BnLCpRTS02gQKKjX
	 skbT+Jh7NkAiBR6sLcB3scupOBCzYlwWpXHBYknNSESbej3QEpllNpZt6+YPO3efOw
	 keAAZb5oh55p/ibcH9e4eAtwsqWYwG5L1TT26/QHazHrAeJCMN9mOYAVDbK2tBbl3L
	 EqNVk8X6PyHr678Xd4lKuH7bQD68qIH3DqY61wmrjhe7Qpdowx3UvzZcDvMrEzYCEG
	 I1e8/dmQQ3tOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F1DC282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152273362.5909.13399702394864608030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236ee8d21d17a38762f77f47f7fe9d631254759e4ed038907b1f91cd56dd414f
Date: Sun, 09 Mar 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741522733
