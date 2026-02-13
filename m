Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0569786334
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770986094; cv=none; b=a1kR0d0glGswgfgpcruvEOh3P0rd74zzTJUgExEkqOK1FgPjsUghYtpPe+xxq3dwnr/CnSBmdl2d1BGwPqQqIAG0wViHj1vJF4wj9cNfehoG4NJkcie9BI/qhy2fEXya/RINS4wPditqHHeueXOJXAUtKK25FcaOtxXYllbAx5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770986094; c=relaxed/simple;
	bh=BThqrZnqQOvWkF0Q4J3e9RXa26tFrgVKv140VkBet/k=;
	h=To:Subject:From:Message-Id:Date; b=bSXsTRwH3yAgxFpnQQMqwD4XH2Vfy5g2We1QaOx1TLyvlj+Bkerxn/l7Bj5+d0pwx3PQtLSKKMIG6VTXvQmjvbhXxl2Mxgyn5dGlkDcJ5AoIARnH67Qe3YE9HixzHVHZjadDW2Q+/eOjlgooukr11Rq+qoHdrCkH0aeavyD5Rq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzwG6SMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzwG6SMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE53AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770986093;
	bh=BThqrZnqQOvWkF0Q4J3e9RXa26tFrgVKv140VkBet/k=;
	h=To:Subject:From:Date:From;
	b=HzwG6SMn9CstFhw7GQb7oVhOYEVcz1KDG5QIeUhGB7BpVGmVBSrYfSkd0bAbIUret
	 Ak7h8Rx6YTK/WxQOhPXkZREZt5u0Z9olOYe96T5EADduko8mdTpVkpueq5O72oSgqQ
	 qD80vB2z46WpVmKZVkLeOw5LP7KzfAQiZUCWnWiQJK3mZdU5q84UFRyiDdrMSKISh1
	 nfVjm0hwAqTALY1j8A2GNe3OcwP7byP8xZVjcfTd9FlTEyYl/2NhkAnVWAUOT0ICpv
	 6TA0oFBDY6J8Nqi7uue7SDtFQb2xAVvDuI6vOKPqdnPEWrGthXHKYNg7CMlgfqjLaz
	 nDWXZnNgYybuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71AAEDF15A
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098609366.18599.8645078358623299516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c15c3a4a26e660e30bb7f19964f519ac590802777939f4779718ce708019e78
Date: Fri, 13 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770986093
