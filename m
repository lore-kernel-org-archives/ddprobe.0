Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC90E63C
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68318C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664959253;
	bh=Nqx4o0loMspRQHaKFKF21NpNCUcS6zm08CeXt8Ww1fM=;
	h=To:Subject:From:Date:From;
	b=ATRZpZB+UvaqaPppUk97KALRFEoTpxqpDKR2TYp/cfhn0upUakmryCyzv4tgf9X76
	 iWptWMkZ/C6wr9AMrplOoCnmBZeqJIg+O5ew3wKeHbo2JjyQ99Jl/5PSLRDnk61oKs
	 XA3TjYFUiQO+0NlDL0Yv+vE1CzSlpVnjKEVfaDHHjRQm8NAuQRgGXWuF+2v4XiZBkH
	 bZLgEffw6qo0SWTkL/DDU9IFwpTbXqawl6MLOqrWrEwbZJGYv4XkA345TDNIhFVj5z
	 E4L3R+b5TE1H3IAZ5v5mdzhQEo5QUhi7tJZg7eNu+7P4DMeLmZr181/HUxIsn2pzC7
	 HRm8wb99OYFHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E90C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495925332.5436.18206106258825798157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58430928b43588e2d6e3ba4a4b28aaa5ac38f0e1e9c089d01510de2ade2578f
Date: Wed, 05 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664959253
