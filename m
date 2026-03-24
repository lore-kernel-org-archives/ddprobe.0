Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCB935AC12
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774341894; cv=none; b=mT2aKapv4CPFoatgY0DIaCjRltl/WZrDf32K2rw4ROKYeyT7jJW3NbwFLBi9DRjFOb1t/hgCK0qxfvwrxg3k/a873YBRJ5Iu37JNyuk/h9sZ5Ysp0RJsRwXhloRL1IsBpSjAJOglJQWNQvZW1mFJFc/elyapM29mksunKve2Y78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774341894; c=relaxed/simple;
	bh=PQK5W0bwwgfw/IYp+opzFw52kunsHeRKNpn4E79xhak=;
	h=To:Subject:From:Message-Id:Date; b=WmOJMKIIYbu1cZo+VHTRKX4MH/tXrQ3u2Lv9GJSteChEQIeoQtD9+m+LO7VXNcFSEtiYi69JzJIVv/KHWnpbvjSgq0T2ksjjF46BHKGYdPOXmJ8zwbhzYkuBMXgZbdOBkfSvY7S2UPSvknonXxgeyZ/0Gu/aYTNY4jk77RRqifo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXlADvUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXlADvUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE06C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774341893;
	bh=PQK5W0bwwgfw/IYp+opzFw52kunsHeRKNpn4E79xhak=;
	h=To:Subject:From:Date:From;
	b=bXlADvUhVCVgY2sphDxd0WYQwsYpe2zV/Ee7ZhNwvcjBcm0H7dGNGU9ETC/TQYyh5
	 YhPJG1iftKDpfNgROmDNpd8pE5A5vKBC9cfdShB6ws/7Lbhy7YhUa/D3GLkSwsVEUb
	 wOH/RXikQ7kPiGl4qyAWziQ7ibD7sH5sZTBbSkDZD/cOdZz7cFTxMDOBJectrWWgCc
	 odAWCybeq6r8n5ZdEEoWlCmkMrovC0isxw8Qz4vJWW/P4+zxw6jrA00DnC1DDjbyUr
	 ztcXtu8dEmCKlfNl0VMq1u5rxWyMkRNiKIFggJLd1ES9Oup7wxzIGDgkvSA7akcnCO
	 tgMf9dM1+k3yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A49F532ED
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434189358.23670.13963567778460787297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5137e2a4ab7e89921e2763490e470100815b191a0a03bfed57e38752d19191
Date: Tue, 24 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774341893
