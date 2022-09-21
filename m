Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9941365
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC31C433D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663723853;
	bh=C9gVp6C3CK4TlB4cimXPSVlN1+6RRgOHr57NpLFT0BI=;
	h=To:Subject:From:Date:From;
	b=bCN4Ssq4/bAtxJR4bq90N0WExow+MdV8QcnXn2k55RPYYeccS+vpNJae3E5jX7Cxa
	 UfyUa36Q7y3hEsDN0Mgha1MP9K5R6ec/MDRKI6tY4AE5MB4IzzTh2Ary0NCZ5A3lir
	 zSW/fOi53L3nzZYCdTtehsG06BZZk/K8tUw0wwRqg+8hKkF4igypcw69i3ETVIAIvm
	 q7nBNeMk5gNpA25DSh6XYv+zWzkspX4r0QOs2nvJxt1Ct7+8QMfHliSj9MMjjt7BRT
	 UaERUfu0eTGeEIkT65DWu/2cx0oHZShiI0Nb0Q81nIAxDKcF8B9nd6NZ45XYVhpaGw
	 kNHZgGedATgGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5471DC54EE9
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166372385332.19083.13707288849891167820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad3137cc80d75894e5ffcdec83dbded3b179e322e5a9abbff6a55c1f25c95ab
Date: Wed, 21 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663723853
