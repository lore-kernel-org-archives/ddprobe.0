Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4577478C9C
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746911394; cv=none; b=X7Q+jZHGpGseW0u2gpd2x3Vil5Jx7xYX8EyBmXiGgd2MbpOxfjxAuSOqgq4JFv/DdbEvCDcJ8RNXK2DEfLRHglKUB7uYrsXX50upJ7EU3UyXNGW/GTmncSqzCRJ4Lvc+VyxFtIZFr7PnKOlp96+02pq0wwOWI0WbuQoFSR1gNgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746911394; c=relaxed/simple;
	bh=+LgZ4rBcfHRPs0dWZbevNzvQOUtd9ved+G6hHXfYlrc=;
	h=To:Subject:From:Message-Id:Date; b=ieCOkgSrRzhrQKb/CNuBTB5Jf8vFJbTVwmaOI9T6ME6pnX8DQ8FFqqjgBzxMfc1VAnHv6B7t95E1ea33oY9yYHqBmbfEDgOGlr5LY6Tq5NKWmXWHEo8WYcbyM4IRlaSpN9Bx8LDlAfGVc5mgOkakWFLGcXKka/4iDOyhdlBmLjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqoI/kw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqoI/kw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A812FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746911393;
	bh=+LgZ4rBcfHRPs0dWZbevNzvQOUtd9ved+G6hHXfYlrc=;
	h=To:Subject:From:Date:From;
	b=AqoI/kw6JG2XmUoKbYAj6QvL+Ti0q6PHvaLcKzf1JxstYZ8uCishT5vJKZdSiAKw+
	 oUuZQwgq2mprTZlqFV5jfRFlWFqyWGoPoAxkjXBUp2NUh+s11tPbdDnwnCcx+KwuRK
	 CeG0op4pjGN6dBVJsj1Tf9OqJRcp03jpBqoz3XG4H2fZ8shNIKTXqzc5pHyc6EkpCp
	 xDhl1VTHsSbOFnPsu61cF/Q4cs329SuKIzD7ROJdN+eKaGiCTpExYrIHgVqJYIEKkq
	 wbvT7gByHCtSpYTA0jVmbCLjVApvC/rUSrJM4+0LcSMSHdV0xLEtWnsz8qgzP73wyx
	 98vWoOCnSTukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91575C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691139357.24568.9568911071608284449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3606e786aed9beeff0dd016a3570ce1be6b5f396bdc85977d04eaeffc1a30c
Date: Sat, 10 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746911393
