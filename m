Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F7AC8F9
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwVVU0dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796F5C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701680896;
	bh=Ipxbt/iN52sd/e4Gxi2YlZiDjydIVnygpyJSV3tKRNs=;
	h=To:Subject:From:Date:From;
	b=cwVVU0djzPQQXHW3WyNaJf0WdJ0kwxBvyizVGFfg3GuGOewwm9FYXNgvTYhiV8iW1
	 WN0SniCuWn+XatunJLlu5cPJi0yCOR8nsFIWh2r4uZ9lXMsiSRXN78cKK6XBXffevL
	 fUEd3EQpLx4jd578VwQCFkCahWkiKmwfAhdj7Ms6egB4gOrWVwQxNhbGgld1rAegAA
	 hNPyMe3+VKxEmgG+Ygc/dfqoqW6UrWJD/cMtlYFiuYr+QaPJPSZ7F46JZ+X8NGl3xx
	 0BPlC/DZZEmI5MEJfxvkKg7EDoqwYSU/MiNq0GwC6FqTspGsnXCd5V9htZcq8Jcxnz
	 yerad54a3/W3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA03C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170168089637.1100.6616588327761656561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8abba65940ee748deace62541f4122bb31fee0ec6eecfc2d787bc523d21dcd2a
Date: Mon, 04 Dec 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701680896
