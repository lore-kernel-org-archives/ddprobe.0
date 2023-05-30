Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439ABA927
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 23:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4ADC433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 23:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685488985;
	bh=7O5rmj5rP2fgzKimkkUqrYk9Bbcv5P7CVgVCVD8gOoU=;
	h=To:Subject:From:Date:From;
	b=WqFOso7yqg4ajxosWMUGIMJI7NAWYgKFCIGU7MGMKTjICNXy80THWjH6AbNWYrA5p
	 r/yYEakyBFS14iyO9hLtYB+oRzmXAwfjaUdnfdh91Yun8dfXeu2QYdDxwSp0fwT8Sb
	 GxBIx+U75RwxiBhuBbnAaaQRkYgMRLeJYus25qIxA/ra0So1PoAG96jWdLQVPQpA0s
	 zIegpdMg0brlnV4yHG9NBS0PR8NpBmeOb4oknE8I4wZCN8Dt/L83/mcJePzj4AjqUM
	 H0sm1OQv6dRYNH4P+XNeEoWo7DLIyjUXWLjyD48A4yitazHfV29/eIpyljbCUJsaQW
	 tNcofw8RrX9kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA166C77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 23:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168548898575.25786.12496978168094650872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53eb796e8c30cdd9b9f83f52fe2e8051e8b8b79d9375206ce971816ed02805bf
Date: Tue, 30 May 2023 23:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685488985
