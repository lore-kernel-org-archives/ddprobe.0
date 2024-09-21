Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFA818EA2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726950954; cv=none; b=ZfVHTiyHOXzHmQoOuxiPP1VcWxA8T2vc9hhYcPNVBpIR6MLtfLpC9/2WQ4JQrod69d4FFP4/DRYIoo3u+F1ClodpcGSiHQe3OFggT7fIuwy4BcO1wrHrO8IFKeq5u51WP+1KGxxjNFQT0Fy/NPdLKOnj7d6zVIaJlxH4sh+8ZkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726950954; c=relaxed/simple;
	bh=dfYeUZU2kRIpXG+6iQAoHDWb91fXhVPCyUkThSU0IIs=;
	h=To:Subject:From:Message-Id:Date; b=Re4i5Oi9nPX/KzYG2rylHbnUdOC9hWWuHxEP2ozyggwPkWBA3ofE/AnZ4vNul8oRqIFudUOeSq5o0KWyajnLqsVvE4DIm8yOUgvyZVvlJG8TJG0geya0qg/gWDth5/xcNP5Xl55SJLcs5fwXiMtv3YPKVyKwIYVl3WMBVQd7VIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5AvLDU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5AvLDU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C4C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726950953;
	bh=dfYeUZU2kRIpXG+6iQAoHDWb91fXhVPCyUkThSU0IIs=;
	h=To:Subject:From:Date:From;
	b=M5AvLDU66r104241tLZTs6CM1cXtY2xpbujq0Nf+ZZOpS0xvVkGQdzNR4ltF6H96q
	 SLd8AijHh9Hq4lcjS3DHHNiSX7z4+HDF7cdjHNJBwewNeHDFaybLW3pR78x3qd5fC7
	 1OnAFHcm6TFB3ZCfNljLezUd1NCgXUhFu+P268r7AF1SqCkN3DEsgmqC6/4CquE4h0
	 Goqb51rxSiL4cdCc2/Fvz2RZ0fcsNYuoj0oa7CK+bulqlqJe7pqq1UtpfvUE4frS9H
	 q4F8osE9P38j1KCK1R1EPwL7Z8vD1opekz/sEdSO/Slt8WePc4kmtJ2Gn4jBBnGad6
	 xalEkBGYy6Wzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9374FCF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695095359.26422.1909244398587346127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f66c37872dfc59b6ffc3c5b64d79a6bab4575aa301ea2937485cd3a49d1e1d
Date: Sat, 21 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726950953
