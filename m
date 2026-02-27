Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B072441A6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772201094; cv=none; b=IvAJWEUdUGCicEYcGXMGQltXCUxYId3zzTA/a2g9WPYN7ppVmqp9ZDt9n9DwdPOr8T94wYKWHleDyesSWKoqCjBlRt2gFozroZMoPdrWV9iiookVA01iODnwZ5xEG9MIqi6c8zwCYHWFdQn0HT/tobc6AXHh8hoC/nfVzdqFpq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772201094; c=relaxed/simple;
	bh=37ZhpDhw0W5pIQfOJcbfD12kDa5XzDc35RUAD12AFY0=;
	h=To:Subject:From:Message-Id:Date; b=p5iZ+ezAAQUHhxn5Ta8BDXTY/ORDDx7hgVFp3QWuBBJsGLj+ZPa4q9CPajBofstePwZf/R0nkIeGLRw0ZC2eqblKk0H1EwkKwL0IJxQLmjNBGAiJ8CN8WuOAh7GAE2SlVzuzKkiyDoFpFZB6iYPDAJlG17v3Ey+V8vHhLH7l8hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRtaKZS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRtaKZS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCE0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772201093;
	bh=37ZhpDhw0W5pIQfOJcbfD12kDa5XzDc35RUAD12AFY0=;
	h=To:Subject:From:Date:From;
	b=FRtaKZS7GGOSBY+nRZBK9Q3kV5XtNIXK5VTw2ejAuoo/X1VcwaCimdjoiNG8aJ6nP
	 ODkAw60sx1UoLApRagah4MXoTfOlHY2e6ujCAHW+DOCw2f/Eb0lnonRDQT4FFV+bIb
	 kV7oPG5ocX2kAbQ6xHOSPU+L2guiwbhqClCG2+J6usTlhvEtEpbNOGNDSY41rVDJyt
	 e01V5pEtMxKmc7xC8Y9qyMFRx3Ykre2KL0GsGt3jhBkv3ekfbZQfJDqD9YrI6gZWTs
	 VD40CdgF7f2rAjmTXoZ9E0es1akxVsj01d0ovX0BePu9N6lQlTeha4YCo6hU1xaro8
	 QSvKFwzQPM69g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F025FEFB55
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220109357.28301.5358964237285067037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bdb6028f33b9ccc3a1b8090c17ef18d78462055d085678c38ef748d1b38ba0
Date: Fri, 27 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772201093
