Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E35465B
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 22:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C26C433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 22:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676846285;
	bh=ptcHoazP98zub9E5Qu/HfwkPhave+74/AJ4E18rBN+E=;
	h=To:Subject:From:Date:From;
	b=m04NnjJWTUxm9loIdYFn7EFBGCsLX0WYUPJ+vKSexl8d3+vLHoFI2Hoa5qvzP+vfN
	 ebmKM+PE3sWohakYyFjP/k6R4dmPNUGXXcklcmavguecxxRG1mumfKJ/rxE6Im4sJT
	 uToeQDTUJF61/s2cpPsufBNvyC4RsS4Q9oqU6U+P9aGF+0MvulFH0LsapOoDfOLbdE
	 ZOUWbBrwLLuobg7J158FynGy0HwdCmD3VQrhBUcL1psbGfpuBIF8UtgQXZjvzpV3bo
	 ysI8KqB/Fg0ECB4OzMC3SYkwA22dt2Zugpt5K1znc5CiaVxPdd+2GcD9N6Z0nzPqHh
	 bBOkwgHwjtLfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EC0C05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 22:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167684628573.15041.5074306790666980881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51ff068841d06ebc86beb2aa283ef3e7e44e24730ad9f00eba8a7213eca0931
Date: Sun, 19 Feb 2023 22:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676846285
