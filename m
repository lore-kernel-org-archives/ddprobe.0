Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC473212
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88321C433F0
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670865687;
	bh=drFGo9lOumXZN+r4pS+lil61AyYwx0UeyVNQ+vASoqo=;
	h=To:Subject:From:Date:From;
	b=QKGkkFmyUrqttfjtqWWuEA8rW2/G0wH6xNgtLODQeQa1idjElIq4QpUkcLPjmEETa
	 TODvAMdrGUGVWe90LuZrSBo1/xaQmtZ4/eVwDzn0dVQIjZ86OEQWkFmZgooD2oe2Kl
	 ULpuBgH1PHU5o7UZ3RZoEIYuHTBZyH2ocWkKoKQxuJdMw4IZT2Ry7iSOQytPS8wQqH
	 9mK3Vcix7cTto7k5erHBwZ8F3+AF8MWF3Yp+BGWaN8EYT7StYpnSdDYds5xGCAyplQ
	 LBWv1YMxmZETgP/73U/I+l9yarutnpyOxxqvNzoLcB3ZmxiyfudqWnEKmZIvvPvvS9
	 DSsHxtRIaI/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BFEBC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086568743.23646.4609034833216396731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d564e6789e71f2ffdb8745567b375cb7d7d9bdaee852012f3ecaa20b76a82bd
Date: Mon, 12 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670865687
