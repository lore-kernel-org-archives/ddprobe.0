Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D8210F2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA55C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674793385;
	bh=inp26P2LTGsEwZko5MZ2teS5l5JVICqzNjdEUOCxsjU=;
	h=To:Subject:From:Date:From;
	b=kznUBxXjeTvSuXHHZyBaIeHFDg0jQqcjsk6tSP79OY9NzS7iCqn1CCpLnQQcYKAik
	 DCamZrcHo/FEzRSIpg+YdiohHypBTXgM3AnrADvEDTjqa0qWZZXuMn25/V5+URDV0+
	 Rsz7WIYduCesQL4FD+a7nOequuUgCrgq51yfOgtzxdDl9Lzi0jtOxm1GMoXybXPM15
	 r7YeqvE03/TcuM1F/yNgp/nVKGUKXzbDwAla59NwHwTkXsF7/VqqXVwVEx/cuS44mi
	 +KVzmSdIwhMy2+kXXx9SWPiNoJUMo/esqwDWlxb2lQWHfN2A8D3YPjQk9xL18nFzKx
	 P44XRkpGzfW2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCC1C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167479338575.23069.7991026187785335018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b1e0e9e24457ffb4f6cee5e42015f32b1532787a17ea73d2b879d009ade62e
Date: Fri, 27 Jan 2023 04:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674793385
