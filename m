Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0596C8F44
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94463C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673558487;
	bh=w9bFy2SP/qJ32HIQb8VtZBunT2iDB8LssFEYaiUcaGY=;
	h=To:Subject:From:Date:From;
	b=lB9eh+bVB1XE+Zn3mGDrj1PnRVJHgf8/awYA9XtoIBh/FrGVfYhgGzAlge7aXeOHU
	 /QX9pGPowPy1RZAA3khOkW3oM5hMZ4Uzk9+bxM+XISDb7//4imhP+CzWhJRta60Mww
	 9w4NSvClCk2rPY75vDPlt+7chp9tw8JtuLslEh3qTsro2rUL2wo0LLaHcI0rLGVOb4
	 q3b+jn6HBNPuI60v/dGBL1gDdPdYvdTtJSWaHxieHhIOz8oUR5pw2lShRCVho2c0cH
	 Tf/woyOsEWnD5IbIBk2OcC01PIhTnrf8NJa61fKeXT5V2fqoitxb/xEiYONwjCsrCk
	 wKXPBiglinKyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C94C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167355848745.1910.7917242059017126444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb97abf1dceca8943d2da8806f5a173831fb349e34d8016ce36d96d331c83ab
Date: Thu, 12 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673558487
