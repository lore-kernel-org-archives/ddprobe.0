Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0968A265632
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765663374; cv=none; b=jDF0OEFUDy4N9i8ljh9MC/7YBi7CT/j67OEM2uG4Scow4390YL4Ht5/JT5JqPPqQqmiiv7a/InPzr2JsREiF3Prn7r7+vS9nIxY4UBbSLItw/b/w8uGBxHt4FiU1ZQIoLF+CCrpNhAyP60df8YsldLLLLUPqgudzG+GgZnhQ2cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765663374; c=relaxed/simple;
	bh=SomrawVqBJW48H5q1FrAFaZu8TkICVyUBxwMa9JIlGo=;
	h=To:Subject:From:Message-Id:Date; b=DFo3ChdasKe6FIKd9TH0ioO/BXnLWlMqpqrdZFuZlvMQepYMYA4qYmM3Qn7YjX5uVEzIe491fHzo1uBJud1LuBFQ2SDmXWjJc6zZv9t2NJLDUYwQlJ3NIcXlwwJrystifqE7NaFgtn6ax+VcrN6S84ZF+ducv3Bv9Zu+vNwrRwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7SyfbIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7SyfbIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CF8C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765663373;
	bh=SomrawVqBJW48H5q1FrAFaZu8TkICVyUBxwMa9JIlGo=;
	h=To:Subject:From:Date:From;
	b=D7SyfbIFO/qrGzPDsfsZ+3Qo90KbAtpmMZhqlxAc4YRGt22kVdGRimhjw8HtdcP0s
	 CASed3qIE9L5O+cJcvxGNyVMwrHaVOVuRz1BIp+LiWWCaiYcXXtl0taWtft2awDuky
	 Rb6Z6dL4RFEypkq3DDFCDkgTn9goMjijBCEScW0lakBbQKf0sRTYMgh1gmG0lLGjcm
	 IPHOlXvh3qkIsGkoXPBNhGifmh2OSeekGL0tY5+MUrv2siK2GcDN/q0FMy5VS6En5x
	 BkzCbSlRs4Vgnmom3uvpgkxBccxJaW/sVPJHhDfZ7qDEyYndmSeSXTF0rsfBB8oKpN
	 4V3vyF2SC36ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DDDD5B159
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566337358.20836.7071245233488938696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f42b47899b31f85c971a2f8900989b1cae6c6c09ecd7ceda3fd3b7c605c725
Date: Sat, 13 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765663373
