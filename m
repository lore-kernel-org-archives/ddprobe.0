Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5897E8837
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 21:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 009B8C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 21:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683409086;
	bh=IHhA3B6LkanOzkQQZ3nAd/ogOycklUp2jzZuiaEhK+4=;
	h=To:Subject:From:Date:From;
	b=IT4l+2NdhxIzuVNG/uB67Hah+q53+kvw2CwcElXwVn9bmcexGxpvvjC6qWqs8wYjL
	 VouCA5eTgYyIOt8kPJhGMTYbYIut5/K3g9cjUe+WjfSLNDpW/++DfYGEkcLFzP2NcS
	 fL/xZqZ10BM5yrMWab//JVOu4FquJ8tLJE8w5MT7YPu0uYRvuTY/40PwVNsgOS+1B9
	 y0vYDClh2XY+3M1MbGv2qnBYGwNjHk2ajABJ/KYH9ZekXRUQDjMkjaYbglaZxOoIkF
	 99iMVAsWrIqbIEA+POADfzYQjCHRX3f0RqCilfjHyhsXWz1wU9vR/R+vssjBUtYhOo
	 YoHRN7fbuadfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D86E5C77B75
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 21:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168340908583.29944.514619870527567181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01c321ec9ebc1cfd4a8b016ef4d84c604f1a8f1f0707488a00ac97a502998ad
Date: Sat, 06 May 2023 21:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683409085
